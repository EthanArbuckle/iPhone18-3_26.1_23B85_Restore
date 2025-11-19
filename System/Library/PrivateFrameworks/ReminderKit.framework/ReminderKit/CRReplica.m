@interface CRReplica
+ (id)unserialisedIdentifier;
@end

@implementation CRReplica

+ (id)unserialisedIdentifier
{
  if (unserialisedIdentifier_predicate != -1)
  {
    +[CRReplica unserialisedIdentifier];
  }

  v3 = unserialisedIdentifier_TTUnserialisedReplicaID;

  return v3;
}

uint64_t __35__CRReplica_unserialisedIdentifier__block_invoke()
{
  unserialisedIdentifier_TTUnserialisedReplicaID = [MEMORY[0x1E696AFB0] UUID];

  return MEMORY[0x1EEE66BB8]();
}

@end