@interface DOMNode(WebDOMNodeOperations)
- (uint64_t)webArchiveByFilteringSubframes:()WebDOMNodeOperations;
@end

@implementation DOMNode(WebDOMNodeOperations)

- (uint64_t)webArchiveByFilteringSubframes:()WebDOMNodeOperations
{
  v2 = *(self + 8);
  v3 = *(*(a2 + 208) + 16);
  if ((*(*v3 + 1032))(v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3[3];
  }

  v5 = *(v2 + 16);

  return v5(v2, v4);
}

@end