@interface TPPBDispositionUnknownReasonRemovalMachineID
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TPPBDispositionUnknownReasonRemovalMachineID

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBDispositionUnknownReasonRemovalMachineID;
  v4 = [(TPPBDispositionUnknownReasonRemovalMachineID *)&v8 description];
  dictionaryRepresentation = [(TPPBDispositionUnknownReasonRemovalMachineID *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end