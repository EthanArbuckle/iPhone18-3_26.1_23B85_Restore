@interface HKSPProvenanceInfo
+ (HKSPProvenanceInfo)unknownProvenance;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToProvenanceInfo:(id)a3;
- (HKSPProvenanceInfo)initWithSource:(id)a3 presentation:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation HKSPProvenanceInfo

- (HKSPProvenanceInfo)initWithSource:(id)a3 presentation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HKSPProvenanceInfo;
  v9 = [(HKSPProvenanceInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_source, a3);
    objc_storeStrong(&v10->_presentation, a4);
    v11 = v10;
  }

  return v10;
}

+ (HKSPProvenanceInfo)unknownProvenance
{
  v2 = [[HKSPProvenanceInfo alloc] initWithSource:@"Unknown" presentation:@"HKSPAnalyticsLaunchSourceUnknown"];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@.%p] source %@, presentation: %@", v5, self, self->_source, self->_presentation];

  return v6;
}

- (BOOL)isEqualToProvenanceInfo:(id)a3
{
  v4 = a3;
  v5 = [(HKSPProvenanceInfo *)self source];
  v6 = [v4 source];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(HKSPProvenanceInfo *)self presentation];
    v8 = [v4 presentation];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKSPProvenanceInfo *)self isEqualToProvenanceInfo:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(HKSPProvenanceInfo *)self source];
  v4 = [v3 hash];
  v5 = [(HKSPProvenanceInfo *)self presentation];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end