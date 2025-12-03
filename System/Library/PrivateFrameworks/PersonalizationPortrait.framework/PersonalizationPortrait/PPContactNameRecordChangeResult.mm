@interface PPContactNameRecordChangeResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContactNameRecordChangeResult:(id)result;
- (PPContactNameRecordChangeResult)initWithChanges:(id)changes changesTruncated:(BOOL)truncated;
- (PPContactNameRecordChangeResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPContactNameRecordChangeResult

- (BOOL)isEqualToContactNameRecordChangeResult:(id)result
{
  resultCopy = result;
  if (!resultCopy)
  {
    goto LABEL_4;
  }

  v5 = self->_changes;
  v6 = v5;
  if (v5 == resultCopy[2])
  {

    goto LABEL_6;
  }

  v7 = [(NSArray *)v5 isEqual:?];

  if (v7)
  {
LABEL_6:
    v8 = self->_changesTruncated == *(resultCopy + 8);
    goto LABEL_7;
  }

LABEL_4:
  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPContactNameRecordChangeResult *)self isEqualToContactNameRecordChangeResult:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v6 = [(NSArray *)self->_changes copyWithZone:zone];
  v7 = [v5 contactNameRecordChangeResultWithChanges:v6 changesTruncated:self->_changesTruncated];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  changes = self->_changes;
  coderCopy = coder;
  [coderCopy encodeObject:changes forKey:@"c"];
  [coderCopy encodeBool:self->_changesTruncated forKey:@"ct"];
}

- (PPContactNameRecordChangeResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"c"];
  v10 = -[PPContactNameRecordChangeResult initWithChanges:changesTruncated:](self, "initWithChanges:changesTruncated:", v9, [coderCopy decodeBoolForKey:@"ct"]);

  return v10;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPContactNameRecordChangeResult ct:%d c:%@>", self->_changesTruncated, self->_changes];

  return v2;
}

- (PPContactNameRecordChangeResult)initWithChanges:(id)changes changesTruncated:(BOOL)truncated
{
  changesCopy = changes;
  v11.receiver = self;
  v11.super_class = PPContactNameRecordChangeResult;
  v8 = [(PPContactNameRecordChangeResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_changes, changes);
    v9->_changesTruncated = truncated;
  }

  return v9;
}

@end