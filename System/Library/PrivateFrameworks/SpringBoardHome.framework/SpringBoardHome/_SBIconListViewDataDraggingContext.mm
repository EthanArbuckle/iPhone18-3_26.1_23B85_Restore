@interface _SBIconListViewDataDraggingContext
- (_SBIconListViewDataDraggingContext)initWithIconView:(id)a3 bestUTI:(id)a4 allowsMoveOperation:(BOOL)a5 fileOptions:(int64_t)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation _SBIconListViewDataDraggingContext

- (_SBIconListViewDataDraggingContext)initWithIconView:(id)a3 bestUTI:(id)a4 allowsMoveOperation:(BOOL)a5 fileOptions:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = _SBIconListViewDataDraggingContext;
  v13 = [(_SBIconListViewDataDraggingContext *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_iconView, a3);
    objc_storeStrong(&v14->_bestAvailableUTI, a4);
    v14->_allowsMoveOperation = a5;
    v14->_fileOptions = a6;
  }

  return v14;
}

- (id)succinctDescription
{
  v2 = [(_SBIconListViewDataDraggingContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_iconView withName:@"iconView"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_SBIconListViewDataDraggingContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_SBIconListViewDataDraggingContext *)self succinctDescriptionBuilder];
  [v4 appendString:self->_bestAvailableUTI withName:@"bestAvailableUTI"];
  v5 = [v4 appendBool:self->_allowsMoveOperation withName:@"allowsMoveOperation"];
  v6 = [v4 appendInteger:self->_fileOptions withName:@"fileOptions"];

  return v4;
}

@end