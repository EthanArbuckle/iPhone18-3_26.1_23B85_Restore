@interface SASBulletinCache
- (BOOL)removeBulletinForID:(id)a3;
- (SASBulletinCache)init;
- (id)_findNodeForBulletinID:(id)a3;
- (id)allBulletins;
- (id)cachedBulletinForID:(id)a3;
- (void)_deleteNode:(id)a3;
- (void)_purgeOldestNodes;
- (void)insertBulletin:(id)a3 fromFeed:(unint64_t)a4;
@end

@implementation SASBulletinCache

- (SASBulletinCache)init
{
  v7.receiver = self;
  v7.super_class = SASBulletinCache;
  v2 = [(SASBulletinCache *)&v7 init];
  v3 = v2;
  if (v2)
  {
    oldestNode = v2->_oldestNode;
    v2->_count = 0;
    v2->_oldestNode = 0;

    newestNode = v3->_newestNode;
    v3->_newestNode = 0;
  }

  return v3;
}

- (void)insertBulletin:(id)a3 fromFeed:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 bulletinID];

  if (v7)
  {
    os_unfair_lock_lock(&cacheLock);
    if ([(SASBulletinCache *)self _isFeedRelevant:a4])
    {
      v8 = [v6 bulletinID];
      v9 = [(SASBulletinCache *)self _findNodeForBulletinID:v8];

      if (v9)
      {
        [(SASBulletinCache *)self _deleteNode:v9];
      }

      if (self->_count >= 0x19)
      {
        [(SASBulletinCache *)self _purgeOldestNodes];
      }

      v10 = objc_alloc_init(SASBulletinCacheNode);
      [(SASBulletinCacheNode *)v10 setBulletin:v6];
      if (!self->_oldestNode)
      {
        objc_storeStrong(&self->_oldestNode, v10);
      }

      if (self->_newestNode)
      {
        [(SASBulletinCacheNode *)v10 setPreviousNode:?];
        [(SASBulletinCacheNode *)self->_newestNode setNextNode:v10];
      }

      newestNode = self->_newestNode;
      self->_newestNode = v10;

      ++self->_count;
    }

    os_unfair_lock_unlock(&cacheLock);
  }

  else
  {
    v12 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
    {
      [SASBulletinCache insertBulletin:v6 fromFeed:v12];
    }
  }
}

- (BOOL)removeBulletinForID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&cacheLock);
  v5 = [(SASBulletinCache *)self _findNodeForBulletinID:v4];

  if (v5)
  {
    [(SASBulletinCache *)self _deleteNode:v5];
  }

  os_unfair_lock_unlock(&cacheLock);

  return v5 != 0;
}

- (id)allBulletins
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  os_unfair_lock_lock(&cacheLock);
  v4 = self->_oldestNode;
  v5 = MEMORY[0x1E698D0A0];
  *&v6 = 136315650;
  v16 = v6;
  do
  {
    v7 = [(SASBulletinCacheNode *)v4 bulletin];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 bulletinID];
      if (v9)
      {
        [v3 setObject:v8 forKey:v9];
      }

      else
      {
        v10 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          v12 = v10;
          v13 = [v8 bbBulletin];
          *buf = v16;
          v18 = "[SASBulletinCache allBulletins]";
          v19 = 2112;
          v20 = v8;
          v21 = 2112;
          v22 = v13;
          _os_log_error_impl(&dword_1C8137000, v12, OS_LOG_TYPE_ERROR, "%s Bulletin cache contains a bulletin with a nil identifier; not including the bulletin as part of the return value of -allBulletins (bulletin: %@; bbBulletin: %@)", buf, 0x20u);
        }
      }
    }

    v11 = [(SASBulletinCacheNode *)v4 nextNode];

    v4 = v11;
  }

  while (v11);
  os_unfair_lock_unlock(&cacheLock);
  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)cachedBulletinForID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&cacheLock);
  v5 = [(SASBulletinCache *)self _findNodeForBulletinID:v4];

  v6 = [v5 bulletin];
  os_unfair_lock_unlock(&cacheLock);

  return v6;
}

- (id)_findNodeForBulletinID:(id)a3
{
  v4 = a3;
  v5 = self->_oldestNode;
  do
  {
    v6 = [(SASBulletinCacheNode *)v5 bulletin];
    v7 = [v6 bulletinID];
    v8 = [v7 isEqualToString:v4];

    if (v8)
    {
      break;
    }

    v9 = [(SASBulletinCacheNode *)v5 nextNode];

    v5 = v9;
  }

  while (v9);

  return v5;
}

- (void)_deleteNode:(id)a3
{
  v4 = a3;
  v10 = [v4 previousNode];
  v5 = [v4 nextNode];
  [v10 setNextNode:v5];
  [v5 setPreviousNode:v10];
  v6 = [v4 previousNode];

  if (!v6)
  {
    objc_storeStrong(&self->_oldestNode, v5);
  }

  v7 = [v4 nextNode];

  if (!v7)
  {
    v8 = [v4 previousNode];
    newestNode = self->_newestNode;
    self->_newestNode = v8;
  }

  [v4 setBulletin:0];
  [v4 setPreviousNode:0];
  [v4 setNextNode:0];

  --self->_count;
}

- (void)_purgeOldestNodes
{
  if (self->_count >= 0x19)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    v10 = v5;
    do
    {
      [(SASBulletinCache *)self _deleteNode:self->_oldestNode, v7, v8, v9, v10];
    }

    while (self->_count > 0x18);
  }
}

- (void)insertBulletin:(void *)a1 fromFeed:(void *)a2 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 bbBulletin];
  v6 = 136315650;
  v7 = "[SASBulletinCache insertBulletin:fromFeed:]";
  v8 = 2112;
  v9 = a1;
  v10 = 2112;
  v11 = v4;
  _os_log_error_impl(&dword_1C8137000, v3, OS_LOG_TYPE_ERROR, "%s Bulletin cache is being asked to insert a bulletin with no ID; ignoring the request because bulletin lookup is ID-based and so there's no reason to store a bulletin with no ID (bulletin: %@; bbBulletin: %@)", &v6, 0x20u);

  v5 = *MEMORY[0x1E69E9840];
}

@end