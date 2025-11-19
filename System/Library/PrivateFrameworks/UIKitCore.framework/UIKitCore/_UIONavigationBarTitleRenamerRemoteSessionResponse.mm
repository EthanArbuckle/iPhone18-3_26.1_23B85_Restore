@interface _UIONavigationBarTitleRenamerRemoteSessionResponse
+ (id)shouldEndEditingResponse:(BOOL)a3;
+ (id)successResponseForAction:(int)a3;
+ (id)willBeginRenamingResponseWithText:(id)a3 selectedRange:(_NSRange)a4;
- (BOOL)shouldEndEditing;
- (NSString)text;
- (_NSRange)selectedRange;
- (int)_action;
@end

@implementation _UIONavigationBarTitleRenamerRemoteSessionResponse

+ (id)willBeginRenamingResponseWithText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v8 = objc_opt_new();
  [v8 setObject:&unk_1EFE339D0 forSetting:0];
  [v8 setObject:v7 forSetting:1];

  v9 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  [v8 setObject:v9 forSetting:2];

  v10 = [[a1 alloc] initWithInfo:v8 error:0];

  return v10;
}

+ (id)shouldEndEditingResponse:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  [v5 setObject:&unk_1EFE339E8 forSetting:0];
  [v5 setFlag:v3 forSetting:3];
  v6 = [[a1 alloc] initWithInfo:v5 error:0];

  return v6;
}

+ (id)successResponseForAction:(int)a3
{
  v3 = *&a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [v5 setObject:v6 forSetting:0];

  v7 = [[a1 alloc] initWithInfo:v5 error:0];

  return v7;
}

- (int)_action
{
  v2 = [(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self info];
  v3 = [v2 objectForSetting:0];
  v4 = [v3 intValue];

  return v4;
}

- (NSString)text
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self _action]&& [(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self _action]!= 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [v7 handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:259 description:{@"%@ is not supported for action of kind %d", v8, -[_UIONavigationBarTitleRenamerRemoteSessionResponse _action](self, "_action")}];
  }

  v4 = [(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self info];
  v5 = [v4 objectForSetting:1];

  return v5;
}

- (_NSRange)selectedRange
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self _action])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = NSStringFromSelector(a2);
    [v11 handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:265 description:{@"%@ is not supported for action of kind %d", v12, -[_UIONavigationBarTitleRenamerRemoteSessionResponse _action](self, "_action")}];
  }

  v4 = [(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self info];
  v5 = [v4 objectForSetting:2];
  v6 = [v5 rangeValue];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (BOOL)shouldEndEditing
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self _action]!= 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [v7 handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:271 description:{@"%@ is not supported for action of kind %d", v8, -[_UIONavigationBarTitleRenamerRemoteSessionResponse _action](self, "_action")}];
  }

  v4 = [(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self info];
  v5 = [v4 flagForSetting:3] != 0;

  return v5;
}

@end