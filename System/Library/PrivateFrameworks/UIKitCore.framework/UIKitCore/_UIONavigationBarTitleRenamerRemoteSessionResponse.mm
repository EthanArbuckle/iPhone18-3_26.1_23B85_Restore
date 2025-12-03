@interface _UIONavigationBarTitleRenamerRemoteSessionResponse
+ (id)shouldEndEditingResponse:(BOOL)response;
+ (id)successResponseForAction:(int)action;
+ (id)willBeginRenamingResponseWithText:(id)text selectedRange:(_NSRange)range;
- (BOOL)shouldEndEditing;
- (NSString)text;
- (_NSRange)selectedRange;
- (int)_action;
@end

@implementation _UIONavigationBarTitleRenamerRemoteSessionResponse

+ (id)willBeginRenamingResponseWithText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  v8 = objc_opt_new();
  [v8 setObject:&unk_1EFE339D0 forSetting:0];
  [v8 setObject:textCopy forSetting:1];

  v9 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  [v8 setObject:v9 forSetting:2];

  v10 = [[self alloc] initWithInfo:v8 error:0];

  return v10;
}

+ (id)shouldEndEditingResponse:(BOOL)response
{
  responseCopy = response;
  v5 = objc_opt_new();
  [v5 setObject:&unk_1EFE339E8 forSetting:0];
  [v5 setFlag:responseCopy forSetting:3];
  v6 = [[self alloc] initWithInfo:v5 error:0];

  return v6;
}

+ (id)successResponseForAction:(int)action
{
  v3 = *&action;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [v5 setObject:v6 forSetting:0];

  v7 = [[self alloc] initWithInfo:v5 error:0];

  return v7;
}

- (int)_action
{
  info = [(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self info];
  v3 = [info objectForSetting:0];
  intValue = [v3 intValue];

  return intValue;
}

- (NSString)text
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self _action]&& [(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self _action]!= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:259 description:{@"%@ is not supported for action of kind %d", v8, -[_UIONavigationBarTitleRenamerRemoteSessionResponse _action](self, "_action")}];
  }

  info = [(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self info];
  v5 = [info objectForSetting:1];

  return v5;
}

- (_NSRange)selectedRange
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self _action])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:265 description:{@"%@ is not supported for action of kind %d", v12, -[_UIONavigationBarTitleRenamerRemoteSessionResponse _action](self, "_action")}];
  }

  info = [(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self info];
  v5 = [info objectForSetting:2];
  rangeValue = [v5 rangeValue];
  v8 = v7;

  v9 = rangeValue;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (BOOL)shouldEndEditing
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self _action]!= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:271 description:{@"%@ is not supported for action of kind %d", v8, -[_UIONavigationBarTitleRenamerRemoteSessionResponse _action](self, "_action")}];
  }

  info = [(_UIONavigationBarTitleRenamerRemoteSessionResponse *)self info];
  v5 = [info flagForSetting:3] != 0;

  return v5;
}

@end