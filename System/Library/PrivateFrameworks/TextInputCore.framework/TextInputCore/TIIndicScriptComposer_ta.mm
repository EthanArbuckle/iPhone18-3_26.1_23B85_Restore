@interface TIIndicScriptComposer_ta
- (id)stringByComposingInput:(id)a3;
@end

@implementation TIIndicScriptComposer_ta

- (id)stringByComposingInput:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"ஷ"] && (-[TIIndicScriptComposer context](self, "context"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasSuffix:", @"க்"), v5, (v6 & 1) != 0))
  {
    v7 = @"‌ஷ";
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TIIndicScriptComposer_ta;
    v7 = [(TIIndicScriptComposer *)&v9 stringByComposingInput:v4];
  }

  return v7;
}

@end