@interface PPContactNameRecordChangeResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContactNameRecordChangeResult:(id)a3;
- (PPContactNameRecordChangeResult)initWithChanges:(id)a3 changesTruncated:(BOOL)a4;
- (PPContactNameRecordChangeResult)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPContactNameRecordChangeResult

- (BOOL)isEqualToContactNameRecordChangeResult:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = self->_changes;
  v6 = v5;
  if (v5 == v4[2])
  {

    goto LABEL_6;
  }

  v7 = [(NSArray *)v5 isEqual:?];

  if (v7)
  {
LABEL_6:
    v8 = self->_changesTruncated == *(v4 + 8);
    goto LABEL_7;
  }

LABEL_4:
  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPContactNameRecordChangeResult *)self isEqualToContactNameRecordChangeResult:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v6 = [(NSArray *)self->_changes copyWithZone:a3];
  v7 = [v5 contactNameRecordChangeResultWithChanges:v6 changesTruncated:self->_changesTruncated];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  changes = self->_changes;
  v5 = a3;
  [v5 encodeObject:changes forKey:@"c"];
  [v5 encodeBool:self->_changesTruncated forKey:@"ct"];
}

- (PPContactNameRecordChangeResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"c"];
  v10 = -[PPContactNameRecordChangeResult initWithChanges:changesTruncated:](self, "initWithChanges:changesTruncated:", v9, [v4 decodeBoolForKey:@"ct"]);

  return v10;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPContactNameRecordChangeResult ct:%d c:%@>", self->_changesTruncated, self->_changes];

  return v2;
}

- (PPContactNameRecordChangeResult)initWithChanges:(id)a3 changesTruncated:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PPContactNameRecordChangeResult;
  v8 = [(PPContactNameRecordChangeResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_changes, a3);
    v9->_changesTruncated = a4;
  }

  return v9;
}

@end