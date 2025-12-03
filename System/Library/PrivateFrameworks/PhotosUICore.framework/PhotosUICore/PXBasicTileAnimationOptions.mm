@interface PXBasicTileAnimationOptions
+ (id)defaultAnimationOptions;
- (PXBasicTileAnimationOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PXBasicTileAnimationOptions

- (id)description
{
  v9.receiver = self;
  v9.super_class = PXBasicTileAnimationOptions;
  v3 = [(PXBasicTileAnimationOptions *)&v9 description];
  [(PXBasicTileAnimationOptions *)self duration];
  v5 = v4;
  [(PXBasicTileAnimationOptions *)self delay];
  v7 = [v3 stringByAppendingFormat:@" duration:%.2f delay:%.2f style:%ld>", v5, v6, -[PXBasicTileAnimationOptions style](self, "style")];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = *&self->_duration;
  *(result + 2) = *&self->_delay;
  *(result + 4) = self->_style;
  *(result + 8) = self->_shouldNotifyTiles;
  *(result + 9) = self->_shouldSnapshotDynamicContents;
  *(result + 5) = self->_flags;
  return result;
}

- (PXBasicTileAnimationOptions)init
{
  v3.receiver = self;
  v3.super_class = PXBasicTileAnimationOptions;
  return [(PXBasicTileAnimationOptions *)&v3 init];
}

+ (id)defaultAnimationOptions
{
  v2 = objc_alloc_init(PXBasicTileAnimationOptions);
  [(PXBasicTileAnimationOptions *)v2 setStyle:2];
  [(PXBasicTileAnimationOptions *)v2 setDuration:0.3];

  return v2;
}

@end