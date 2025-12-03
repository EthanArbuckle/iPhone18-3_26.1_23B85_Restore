@interface PRLikenessChange
+ (id)changeForLikeness:(id)likeness withType:(unint64_t)type;
+ (id)descriptionForChangeType:(unint64_t)type;
+ (unint64_t)changeTypeFromDescription:(id)description;
- (id)description;
@end

@implementation PRLikenessChange

+ (id)changeForLikeness:(id)likeness withType:(unint64_t)type
{
  likenessCopy = likeness;
  v6 = objc_alloc_init(PRLikenessChange);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  identifier = v6->_identifier;
  v6->_identifier = uUIDString;

  v6->_type = type;
  uniqueIdentifier = [likenessCopy uniqueIdentifier];
  changedLikenessID = v6->_changedLikenessID;
  v6->_changedLikenessID = uniqueIdentifier;

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(likenessCopy, "version")}];
  changedLikenessVersion = v6->_changedLikenessVersion;
  v6->_changedLikenessVersion = v12;

  dirtyProperties = [likenessCopy dirtyProperties];

  allObjects = [dirtyProperties allObjects];
  dirtyLikenessProperties = v6->_dirtyLikenessProperties;
  v6->_dirtyLikenessProperties = allObjects;

  return v6;
}

+ (id)descriptionForChangeType:(unint64_t)type
{
  if (type > 2)
  {
    return @"(undefined)";
  }

  else
  {
    return off_279A1B8A8[type];
  }
}

+ (unint64_t)changeTypeFromDescription:(id)description
{
  descriptionCopy = description;
  if ([descriptionCopy isEqual:@"delete"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [descriptionCopy isEqual:@"create"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [PRLikenessChange descriptionForChangeType:self->_type];
  changedLikenessID = self->_changedLikenessID;
  v6 = [v3 stringWithFormat:@"PRLikenessChange {type: %@, changed-version: %@, changed-id: %@, dirty-props: %@}", v4, self->_changedLikenessVersion, changedLikenessID, self->_dirtyLikenessProperties];

  return v6;
}

@end