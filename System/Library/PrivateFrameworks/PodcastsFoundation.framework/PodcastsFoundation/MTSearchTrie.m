@interface MTSearchTrie
- (MTSearchTrie)init;
- (void)addMatchCandidate:(id)a3;
@end

@implementation MTSearchTrie

- (MTSearchTrie)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___MTSearchTrie_rootNode;
  type metadata accessor for SearchTrie.Node();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = MEMORY[0x1E69E7CC8];
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(MTSearchTrie *)&v7 init];
}

- (void)addMatchCandidate:(id)a3
{
  v5 = sub_1D917820C();
  v7 = v6;
  v8 = a3;
  v9 = self;
  sub_1D8D49E98(v5, v7);
}

@end