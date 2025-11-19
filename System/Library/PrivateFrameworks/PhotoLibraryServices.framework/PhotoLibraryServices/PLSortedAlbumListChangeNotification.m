@interface PLSortedAlbumListChangeNotification
+ (id)notificationForDerivedObject:(id)a3 priorChangeState:(id)a4 forBackingObjectNotification:(id)a5;
- (PLSortedAlbumListChangeNotification)initWithSortedAlbumList:(id)a3 albumListChangeNotification:(id)a4;
- (id)description;
@end

@implementation PLSortedAlbumListChangeNotification

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_opt_class();
  v6 = [(PLSortedAlbumListChangeNotification *)self object];
  v7 = [v4 stringWithFormat:@"<%@: %p> sorted album list: %p backing note: <%@: %p>", v5, self, v6, objc_opt_class(), self->_backingNotification];

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (PLSortedAlbumListChangeNotification)initWithSortedAlbumList:(id)a3 albumListChangeNotification:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PLSortedAlbumListChangeNotification;
  v9 = [(PLContainerChangeNotification *)&v12 _init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 12, a3);
    objc_storeStrong(&v10->_backingNotification, a4);
  }

  return v10;
}

+ (id)notificationForDerivedObject:(id)a3 priorChangeState:(id)a4 forBackingObjectNotification:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = 0;
  }

  else
  {
    v11 = v8;
    v12 = v10;
    if (v11)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
    }

    objc_opt_class();
    objc_opt_isKindOfClass();
    v13 = [[a1 alloc] initWithSortedAlbumList:v11 albumListChangeNotification:v12];
  }

  return v13;
}

@end