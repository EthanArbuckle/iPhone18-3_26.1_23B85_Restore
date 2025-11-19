@interface KNActionGhostSelection
- (BOOL)isEqual:(id)a3;
- (KNActionGhostSelection)initWithArchive:(const void *)a3 unarchiver:(id)a4;
- (id)description;
@end

@implementation KNActionGhostSelection

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"<%@ %p placeholder for pushing a ghost editor; ask KNCanvasSelection for the actual ghosts>", v4, self);
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();

  return v4 != 0;
}

- (KNActionGhostSelection)initWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v5.receiver = self;
  v5.super_class = KNActionGhostSelection;
  return [(KNActionGhostSelection *)&v5 init:a3];
}

@end