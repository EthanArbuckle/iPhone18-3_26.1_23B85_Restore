@interface PLSortedAlbumListChangeNotification
+ (id)notificationForDerivedObject:(id)object priorChangeState:(id)state forBackingObjectNotification:(id)notification;
- (PLSortedAlbumListChangeNotification)initWithSortedAlbumList:(id)list albumListChangeNotification:(id)notification;
- (id)description;
@end

@implementation PLSortedAlbumListChangeNotification

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_opt_class();
  object = [(PLSortedAlbumListChangeNotification *)self object];
  v7 = [v4 stringWithFormat:@"<%@: %p> sorted album list: %p backing note: <%@: %p>", v5, self, object, objc_opt_class(), self->_backingNotification];

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (PLSortedAlbumListChangeNotification)initWithSortedAlbumList:(id)list albumListChangeNotification:(id)notification
{
  listCopy = list;
  notificationCopy = notification;
  v12.receiver = self;
  v12.super_class = PLSortedAlbumListChangeNotification;
  _init = [(PLContainerChangeNotification *)&v12 _init];
  v10 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 12, list);
    objc_storeStrong(&v10->_backingNotification, notification);
  }

  return v10;
}

+ (id)notificationForDerivedObject:(id)object priorChangeState:(id)state forBackingObjectNotification:(id)notification
{
  objectCopy = object;
  stateCopy = state;
  notificationCopy = notification;
  if (!notificationCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = 0;
  }

  else
  {
    v11 = objectCopy;
    v12 = notificationCopy;
    if (v11)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
    }

    objc_opt_class();
    objc_opt_isKindOfClass();
    v13 = [[self alloc] initWithSortedAlbumList:v11 albumListChangeNotification:v12];
  }

  return v13;
}

@end