@interface PLDescriptionStyle
@end

@implementation PLDescriptionStyle

void __36___PLDescriptionStyle_styleForEnum___block_invoke_4()
{
  v0 = [[_PLDescriptionStyle alloc] initWithIntialFieldSeparator:@"> {\n" fieldSeparator:@"\n" nameValueSeparator:@": " suffix:@"}" extraIndent:1 prettyPrint:1];
  v1 = styleForEnum__pl_once_object_20;
  styleForEnum__pl_once_object_20 = v0;
}

void __36___PLDescriptionStyle_styleForEnum___block_invoke_3()
{
  v0 = [[_PLDescriptionStyle alloc] initWithIntialFieldSeparator:&stru_1F0F06D80 fieldSeparator:@"\n" nameValueSeparator:@": " suffix:&stru_1F0F06D80 extraIndent:0 prettyPrint:0];
  v1 = styleForEnum__pl_once_object_19;
  styleForEnum__pl_once_object_19 = v0;
}

void __36___PLDescriptionStyle_styleForEnum___block_invoke_2()
{
  v0 = [[_PLDescriptionStyle alloc] initWithIntialFieldSeparator:&stru_1F0F06D80 fieldSeparator:@" nameValueSeparator:" suffix:@"=" extraIndent:&stru_1F0F06D80 prettyPrint:0, 0];
  v1 = styleForEnum__pl_once_object_18;
  styleForEnum__pl_once_object_18 = v0;
}

void __36___PLDescriptionStyle_styleForEnum___block_invoke()
{
  v0 = [[_PLDescriptionStyle alloc] initWithIntialFieldSeparator:@": " fieldSeparator:@" nameValueSeparator:" suffix:@"=" extraIndent:@">" prettyPrint:0, 0];
  v1 = styleForEnum__pl_once_object_17;
  styleForEnum__pl_once_object_17 = v0;
}

@end