@interface BRCBouncingReport
- (BRCBouncingReport)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BRCBouncingReport

- (void)encodeWithCoder:(id)a3
{
  BouncingCountOnSameType = self->BouncingCountOnSameType;
  v5 = a3;
  [v5 encodeInt:BouncingCountOnSameType forKey:@"BouncingCountOnSameType"];
  [v5 encodeInt:self->BouncingCountFromDirToLnk forKey:@"BouncingCountFromDirToLnk"];
  [v5 encodeInt:self->BouncingCountFromDirToAls forKey:@"BouncingCountFromDirToAls"];
  [v5 encodeInt:self->BouncingCountFromDirToPkg forKey:@"BouncingCountFromDirToPkg"];
  [v5 encodeInt:self->BouncingCountFromDirToDoc forKey:@"BouncingCountFromDirToDoc"];
  [v5 encodeInt:self->BouncingCountFromLnkToDir forKey:@"BouncingCountFromLnkToDir"];
  [v5 encodeInt:self->BouncingCountFromLnkToAls forKey:@"BouncingCountFromLnkToAls"];
  [v5 encodeInt:self->BouncingCountFromLnkToPkg forKey:@"BouncingCountFromLnkToPkg"];
  [v5 encodeInt:self->BouncingCountFromLnkToDoc forKey:@"BouncingCountFromLnkToDoc"];
  [v5 encodeInt:self->BouncingCountFromAlsToDir forKey:@"BouncingCountFromAlsToDir"];
  [v5 encodeInt:self->BouncingCountFromAlsToLnk forKey:@"BouncingCountFromAlsToLnk"];
  [v5 encodeInt:self->BouncingCountFromAlsToPkg forKey:@"BouncingCountFromAlsToPkg"];
  [v5 encodeInt:self->BouncingCountFromAlsToDoc forKey:@"BouncingCountFromAlsToDoc"];
  [v5 encodeInt:self->BouncingCountFromPkgToDir forKey:@"BouncingCountFromPkgToDir"];
  [v5 encodeInt:self->BouncingCountFromPkgToLnk forKey:@"BouncingCountFromPkgToLnk"];
  [v5 encodeInt:self->BouncingCountFromPkgToAls forKey:@"BouncingCountFromPkgToAls"];
  [v5 encodeInt:self->BouncingCountFromPkgToDoc forKey:@"BouncingCountFromPkgToDoc"];
  [v5 encodeInt:self->BouncingCountFromDocToDir forKey:@"BouncingCountFromDocToDir"];
  [v5 encodeInt:self->BouncingCountFromDocToLnk forKey:@"BouncingCountFromDocToLnk"];
  [v5 encodeInt:self->BouncingCountFromDocToAls forKey:@"BouncingCountFromDocToAls"];
  [v5 encodeInt:self->BouncingCountFromDocToPkg forKey:@"BouncingCountFromDocToPkg"];
}

- (BRCBouncingReport)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BRCBouncingReport;
  v5 = [(BRCBouncingReport *)&v7 init];
  if (v5)
  {
    v5->BouncingCountOnSameType = [v4 decodeIntForKey:@"BouncingCountOnSameType"];
    v5->BouncingCountFromDirToLnk = [v4 decodeIntForKey:@"BouncingCountFromDirToLnk"];
    v5->BouncingCountFromDirToAls = [v4 decodeIntForKey:@"BouncingCountFromDirToAls"];
    v5->BouncingCountFromDirToPkg = [v4 decodeIntForKey:@"BouncingCountFromDirToPkg"];
    v5->BouncingCountFromDirToDoc = [v4 decodeIntForKey:@"BouncingCountFromDirToDoc"];
    v5->BouncingCountFromLnkToDir = [v4 decodeIntForKey:@"BouncingCountFromLnkToDir"];
    v5->BouncingCountFromLnkToAls = [v4 decodeIntForKey:@"BouncingCountFromLnkToAls"];
    v5->BouncingCountFromLnkToPkg = [v4 decodeIntForKey:@"BouncingCountFromLnkToPkg"];
    v5->BouncingCountFromLnkToDoc = [v4 decodeIntForKey:@"BouncingCountFromLnkToDoc"];
    v5->BouncingCountFromAlsToDir = [v4 decodeIntForKey:@"BouncingCountFromAlsToDir"];
    v5->BouncingCountFromAlsToLnk = [v4 decodeIntForKey:@"BouncingCountFromAlsToLnk"];
    v5->BouncingCountFromAlsToPkg = [v4 decodeIntForKey:@"BouncingCountFromAlsToPkg"];
    v5->BouncingCountFromAlsToDoc = [v4 decodeIntForKey:@"BouncingCountFromAlsToDoc"];
    v5->BouncingCountFromPkgToDir = [v4 decodeIntForKey:@"BouncingCountFromPkgToDir"];
    v5->BouncingCountFromPkgToLnk = [v4 decodeIntForKey:@"BouncingCountFromPkgToLnk"];
    v5->BouncingCountFromPkgToAls = [v4 decodeIntForKey:@"BouncingCountFromPkgToAls"];
    v5->BouncingCountFromPkgToDoc = [v4 decodeIntForKey:@"BouncingCountFromPkgToDoc"];
    v5->BouncingCountFromDocToDir = [v4 decodeIntForKey:@"BouncingCountFromDocToDir"];
    v5->BouncingCountFromDocToLnk = [v4 decodeIntForKey:@"BouncingCountFromDocToLnk"];
    v5->BouncingCountFromDocToAls = [v4 decodeIntForKey:@"BouncingCountFromDocToAls"];
    v5->BouncingCountFromDocToPkg = [v4 decodeIntForKey:@"BouncingCountFromDocToPkg"];
  }

  return v5;
}

@end