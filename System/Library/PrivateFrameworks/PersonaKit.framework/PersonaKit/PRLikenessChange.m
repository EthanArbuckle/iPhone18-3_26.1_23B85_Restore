@interface PRLikenessChange
+ (id)changeForLikeness:(id)a3 withType:(unint64_t)a4;
+ (id)descriptionForChangeType:(unint64_t)a3;
+ (unint64_t)changeTypeFromDescription:(id)a3;
- (id)description;
@end

@implementation PRLikenessChange

+ (id)changeForLikeness:(id)a3 withType:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(PRLikenessChange);
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [v7 UUIDString];
  identifier = v6->_identifier;
  v6->_identifier = v8;

  v6->_type = a4;
  v10 = [v5 uniqueIdentifier];
  changedLikenessID = v6->_changedLikenessID;
  v6->_changedLikenessID = v10;

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "version")}];
  changedLikenessVersion = v6->_changedLikenessVersion;
  v6->_changedLikenessVersion = v12;

  v14 = [v5 dirtyProperties];

  v15 = [v14 allObjects];
  dirtyLikenessProperties = v6->_dirtyLikenessProperties;
  v6->_dirtyLikenessProperties = v15;

  return v6;
}

+ (id)descriptionForChangeType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"(undefined)";
  }

  else
  {
    return off_279A1B8A8[a3];
  }
}

+ (unint64_t)changeTypeFromDescription:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"delete"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [v3 isEqual:@"create"];
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