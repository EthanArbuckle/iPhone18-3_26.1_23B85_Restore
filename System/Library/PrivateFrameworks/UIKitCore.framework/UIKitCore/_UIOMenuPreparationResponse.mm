@interface _UIOMenuPreparationResponse
- (UIMenu)preparedMenu;
- (_UIOMenuPreparationResponse)initWithPreparedMenu:(id)menu;
@end

@implementation _UIOMenuPreparationResponse

- (_UIOMenuPreparationResponse)initWithPreparedMenu:(id)menu
{
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:menu requiringSecureCoding:1 error:0];
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIOMenuPreparationAction.m" lineNumber:27 description:@"Menu could not be archived."];
  }

  v6 = objc_opt_new();
  [v6 setObject:v5 forSetting:0];
  v10.receiver = self;
  v10.super_class = _UIOMenuPreparationResponse;
  v7 = [(_UIOMenuPreparationResponse *)&v10 initWithInfo:v6 error:0];

  return v7;
}

- (UIMenu)preparedMenu
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = objc_opt_class();
  info = [(_UIOMenuPreparationResponse *)self info];
  v6 = [info objectForSetting:0];
  v7 = [v3 unarchivedObjectOfClass:v4 fromData:v6 error:0];

  return v7;
}

@end