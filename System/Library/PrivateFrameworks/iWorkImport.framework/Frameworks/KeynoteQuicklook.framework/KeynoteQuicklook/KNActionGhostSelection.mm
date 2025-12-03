@interface KNActionGhostSelection
- (BOOL)isEqual:(id)equal;
- (KNActionGhostSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)description;
@end

@implementation KNActionGhostSelection

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"<%@ %p placeholder for pushing a ghost editor; ask KNCanvasSelection for the actual ghosts>", v4, self);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v4 = TSUDynamicCast();

  return v4 != 0;
}

- (KNActionGhostSelection)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  v5.receiver = self;
  v5.super_class = KNActionGhostSelection;
  return [(KNActionGhostSelection *)&v5 init:archive];
}

@end