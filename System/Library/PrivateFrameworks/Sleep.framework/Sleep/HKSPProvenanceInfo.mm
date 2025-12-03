@interface HKSPProvenanceInfo
+ (HKSPProvenanceInfo)unknownProvenance;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToProvenanceInfo:(id)info;
- (HKSPProvenanceInfo)initWithSource:(id)source presentation:(id)presentation;
- (id)description;
- (unint64_t)hash;
@end

@implementation HKSPProvenanceInfo

- (HKSPProvenanceInfo)initWithSource:(id)source presentation:(id)presentation
{
  sourceCopy = source;
  presentationCopy = presentation;
  v13.receiver = self;
  v13.super_class = HKSPProvenanceInfo;
  v9 = [(HKSPProvenanceInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_source, source);
    objc_storeStrong(&v10->_presentation, presentation);
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

- (BOOL)isEqualToProvenanceInfo:(id)info
{
  infoCopy = info;
  source = [(HKSPProvenanceInfo *)self source];
  source2 = [infoCopy source];
  if ([source isEqualToString:source2])
  {
    presentation = [(HKSPProvenanceInfo *)self presentation];
    presentation2 = [infoCopy presentation];
    v9 = [presentation isEqualToString:presentation2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKSPProvenanceInfo *)self isEqualToProvenanceInfo:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  source = [(HKSPProvenanceInfo *)self source];
  v4 = [source hash];
  presentation = [(HKSPProvenanceInfo *)self presentation];
  v6 = [presentation hash];

  return v6 ^ v4;
}

@end