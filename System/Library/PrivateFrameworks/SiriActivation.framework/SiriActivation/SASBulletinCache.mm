@interface SASBulletinCache
- (BOOL)removeBulletinForID:(id)d;
- (SASBulletinCache)init;
- (id)_findNodeForBulletinID:(id)d;
- (id)allBulletins;
- (id)cachedBulletinForID:(id)d;
- (void)_deleteNode:(id)node;
- (void)_purgeOldestNodes;
- (void)insertBulletin:(id)bulletin fromFeed:(unint64_t)feed;
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

- (void)insertBulletin:(id)bulletin fromFeed:(unint64_t)feed
{
  bulletinCopy = bulletin;
  bulletinID = [bulletinCopy bulletinID];

  if (bulletinID)
  {
    os_unfair_lock_lock(&cacheLock);
    if ([(SASBulletinCache *)self _isFeedRelevant:feed])
    {
      bulletinID2 = [bulletinCopy bulletinID];
      v9 = [(SASBulletinCache *)self _findNodeForBulletinID:bulletinID2];

      if (v9)
      {
        [(SASBulletinCache *)self _deleteNode:v9];
      }

      if (self->_count >= 0x19)
      {
        [(SASBulletinCache *)self _purgeOldestNodes];
      }

      v10 = objc_alloc_init(SASBulletinCacheNode);
      [(SASBulletinCacheNode *)v10 setBulletin:bulletinCopy];
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
      [SASBulletinCache insertBulletin:bulletinCopy fromFeed:v12];
    }
  }
}

- (BOOL)removeBulletinForID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&cacheLock);
  v5 = [(SASBulletinCache *)self _findNodeForBulletinID:dCopy];

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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  os_unfair_lock_lock(&cacheLock);
  v4 = self->_oldestNode;
  v5 = MEMORY[0x1E698D0A0];
  *&v6 = 136315650;
  v16 = v6;
  do
  {
    bulletin = [(SASBulletinCacheNode *)v4 bulletin];
    v8 = bulletin;
    if (bulletin)
    {
      bulletinID = [bulletin bulletinID];
      if (bulletinID)
      {
        [dictionary setObject:v8 forKey:bulletinID];
      }

      else
      {
        v10 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          v12 = v10;
          bbBulletin = [v8 bbBulletin];
          *buf = v16;
          v18 = "[SASBulletinCache allBulletins]";
          v19 = 2112;
          v20 = v8;
          v21 = 2112;
          v22 = bbBulletin;
          _os_log_error_impl(&dword_1C8137000, v12, OS_LOG_TYPE_ERROR, "%s Bulletin cache contains a bulletin with a nil identifier; not including the bulletin as part of the return value of -allBulletins (bulletin: %@; bbBulletin: %@)", buf, 0x20u);
        }
      }
    }

    nextNode = [(SASBulletinCacheNode *)v4 nextNode];

    v4 = nextNode;
  }

  while (nextNode);
  os_unfair_lock_unlock(&cacheLock);
  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)cachedBulletinForID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&cacheLock);
  v5 = [(SASBulletinCache *)self _findNodeForBulletinID:dCopy];

  bulletin = [v5 bulletin];
  os_unfair_lock_unlock(&cacheLock);

  return bulletin;
}

- (id)_findNodeForBulletinID:(id)d
{
  dCopy = d;
  v5 = self->_oldestNode;
  do
  {
    bulletin = [(SASBulletinCacheNode *)v5 bulletin];
    bulletinID = [bulletin bulletinID];
    v8 = [bulletinID isEqualToString:dCopy];

    if (v8)
    {
      break;
    }

    nextNode = [(SASBulletinCacheNode *)v5 nextNode];

    v5 = nextNode;
  }

  while (nextNode);

  return v5;
}

- (void)_deleteNode:(id)node
{
  nodeCopy = node;
  previousNode = [nodeCopy previousNode];
  nextNode = [nodeCopy nextNode];
  [previousNode setNextNode:nextNode];
  [nextNode setPreviousNode:previousNode];
  previousNode2 = [nodeCopy previousNode];

  if (!previousNode2)
  {
    objc_storeStrong(&self->_oldestNode, nextNode);
  }

  nextNode2 = [nodeCopy nextNode];

  if (!nextNode2)
  {
    previousNode3 = [nodeCopy previousNode];
    newestNode = self->_newestNode;
    self->_newestNode = previousNode3;
  }

  [nodeCopy setBulletin:0];
  [nodeCopy setPreviousNode:0];
  [nodeCopy setNextNode:0];

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