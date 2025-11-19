@interface PBItemDetection
+ (id)_allowedValueClasses;
+ (id)detectionAbsent;
+ (id)detectionPresent;
+ (id)detectionPresentWithValue:(id)a3;
- (PBItemDetection)initWithCoder:(id)a3;
- (PBItemDetection)initWithPresent:(BOOL)a3 value:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PBItemDetection

+ (id)_allowedValueClasses
{
  if (qword_280AEA878 != -1)
  {
    dispatch_once(&qword_280AEA878, &__block_literal_global_5);
  }

  v3 = _MergedGlobals_4;

  return v3;
}

uint64_t __39__PBItemDetection__allowedValueClasses__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  _MergedGlobals_4 = [v0 initWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)detectionAbsent
{
  if (qword_280AEA888 != -1)
  {
    dispatch_once(&qword_280AEA888, &__block_literal_global_7);
  }

  v3 = qword_280AEA880;

  return v3;
}

uint64_t __34__PBItemDetection_detectionAbsent__block_invoke()
{
  qword_280AEA880 = [[PBItemDetection alloc] initWithPresent:0 value:0];

  return MEMORY[0x2821F96F8]();
}

+ (id)detectionPresent
{
  if (qword_280AEA898 != -1)
  {
    dispatch_once(&qword_280AEA898, &__block_literal_global_10);
  }

  v3 = qword_280AEA890;

  return v3;
}

uint64_t __35__PBItemDetection_detectionPresent__block_invoke()
{
  qword_280AEA890 = [[PBItemDetection alloc] initWithPresent:1 value:0];

  return MEMORY[0x2821F96F8]();
}

+ (id)detectionPresentWithValue:(id)a3
{
  v3 = a3;
  v4 = [[PBItemDetection alloc] initWithPresent:1 value:v3];

  return v4;
}

- (PBItemDetection)initWithPresent:(BOOL)a3 value:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PBItemDetection;
  v8 = [(PBItemDetection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_present = a3;
    objc_storeStrong(&v8->_value, a4);
  }

  return v9;
}

- (PBItemDetection)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PBItemDetection;
  v5 = [(PBItemDetection *)&v10 init];
  if (v5)
  {
    v5->_present = [v4 decodeBoolForKey:@"present"];
    v6 = +[PBItemDetection _allowedValueClasses];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"value"];
    value = v5->_value;
    v5->_value = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  present = self->_present;
  v5 = a3;
  [v5 encodeBool:present forKey:@"present"];
  [v5 encodeObject:self->_value forKey:@"value"];
}

@end