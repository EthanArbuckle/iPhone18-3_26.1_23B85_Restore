@interface SXFirstViewportLayoutInstruction
- (BOOL)isFulfilledForBlueprint:(id)blueprint;
- (void)didLayoutComponentBlueprint:(id)blueprint blueprint:(id)a4;
@end

@implementation SXFirstViewportLayoutInstruction

- (BOOL)isFulfilledForBlueprint:(id)blueprint
{
  if (self->_fullfilled)
  {
    return 1;
  }

  else
  {
    return [blueprint isComplete];
  }
}

- (void)didLayoutComponentBlueprint:(id)blueprint blueprint:(id)a4
{
  v6 = a4;
  [blueprint frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  layoutOptions = [v6 layoutOptions];

  columnLayout = [layoutOptions columnLayout];
  [columnLayout constrainedViewportSize];
  v18 = v17;
  v20 = v19;

  if (!self->_fullfilled && v12 > v18 * 0.5)
  {
    v21.origin.x = v8;
    v21.origin.y = v10;
    v21.size.width = v12;
    v21.size.height = v14;
    if (CGRectGetMaxY(v21) > v20 * 1.5)
    {
      self->_fullfilled = 1;
    }
  }
}

@end