@interface _PREditingPosterContentVibrantMaterialStyleCoordinatorImpl
- (id)itemView;
@end

@implementation _PREditingPosterContentVibrantMaterialStyleCoordinatorImpl

- (id)itemView
{
  itemView = self->_itemView;
  if (!itemView)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v6 = [MEMORY[0x1E69DCAB8] imageNamed:@"material" inBundle:v4 compatibleWithTraitCollection:0];
    v7 = [v5 initWithImage:v6];

    [(UIView *)v7 setContentMode:1];
    v8 = self->_itemView;
    self->_itemView = v7;

    itemView = self->_itemView;
  }

  return itemView;
}

@end