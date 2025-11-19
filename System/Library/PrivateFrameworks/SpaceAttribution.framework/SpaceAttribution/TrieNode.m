@interface TrieNode
- (TrieNode)init;
@end

@implementation TrieNode

- (TrieNode)init
{
  v6.receiver = self;
  v6.super_class = TrieNode;
  v2 = [(TrieNode *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    children = v2->_children;
    v2->_children = v3;

    v2->_isEndOfPath = 0;
  }

  return v2;
}

@end