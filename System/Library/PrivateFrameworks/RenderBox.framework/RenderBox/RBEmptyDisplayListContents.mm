@interface RBEmptyDisplayListContents
+ (uint64_t)shared;
- (CGRect)boundingRect;
- (const)_rb_xml_document;
- (id)encodedDataForDelegate:(id)delegate error:(id *)error;
@end

@implementation RBEmptyDisplayListContents

+ (uint64_t)shared
{
  objc_opt_self();
  {
    +[RBEmptyDisplayListContents shared]::shared = objc_opt_new();
  }

  return +[RBEmptyDisplayListContents shared]::shared;
}

- (CGRect)boundingRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (const)_rb_xml_document
{
  {
    operator new();
  }

  return [RBEmptyDisplayListContents _rb_xml_document]::shared_doc;
}

- (id)encodedDataForDelegate:(id)delegate error:(id *)error
{
  {
    operator new();
  }

  v6 = [RBEmptyDisplayListContents encodedDataForDelegate:error:]::empty;

  return encode_contents(v6, delegate, error);
}

@end