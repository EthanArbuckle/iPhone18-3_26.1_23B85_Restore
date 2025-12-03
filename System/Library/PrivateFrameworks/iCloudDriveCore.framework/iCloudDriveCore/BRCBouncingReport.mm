@interface BRCBouncingReport
- (BRCBouncingReport)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BRCBouncingReport

- (void)encodeWithCoder:(id)coder
{
  BouncingCountOnSameType = self->BouncingCountOnSameType;
  coderCopy = coder;
  [coderCopy encodeInt:BouncingCountOnSameType forKey:@"BouncingCountOnSameType"];
  [coderCopy encodeInt:self->BouncingCountFromDirToLnk forKey:@"BouncingCountFromDirToLnk"];
  [coderCopy encodeInt:self->BouncingCountFromDirToAls forKey:@"BouncingCountFromDirToAls"];
  [coderCopy encodeInt:self->BouncingCountFromDirToPkg forKey:@"BouncingCountFromDirToPkg"];
  [coderCopy encodeInt:self->BouncingCountFromDirToDoc forKey:@"BouncingCountFromDirToDoc"];
  [coderCopy encodeInt:self->BouncingCountFromLnkToDir forKey:@"BouncingCountFromLnkToDir"];
  [coderCopy encodeInt:self->BouncingCountFromLnkToAls forKey:@"BouncingCountFromLnkToAls"];
  [coderCopy encodeInt:self->BouncingCountFromLnkToPkg forKey:@"BouncingCountFromLnkToPkg"];
  [coderCopy encodeInt:self->BouncingCountFromLnkToDoc forKey:@"BouncingCountFromLnkToDoc"];
  [coderCopy encodeInt:self->BouncingCountFromAlsToDir forKey:@"BouncingCountFromAlsToDir"];
  [coderCopy encodeInt:self->BouncingCountFromAlsToLnk forKey:@"BouncingCountFromAlsToLnk"];
  [coderCopy encodeInt:self->BouncingCountFromAlsToPkg forKey:@"BouncingCountFromAlsToPkg"];
  [coderCopy encodeInt:self->BouncingCountFromAlsToDoc forKey:@"BouncingCountFromAlsToDoc"];
  [coderCopy encodeInt:self->BouncingCountFromPkgToDir forKey:@"BouncingCountFromPkgToDir"];
  [coderCopy encodeInt:self->BouncingCountFromPkgToLnk forKey:@"BouncingCountFromPkgToLnk"];
  [coderCopy encodeInt:self->BouncingCountFromPkgToAls forKey:@"BouncingCountFromPkgToAls"];
  [coderCopy encodeInt:self->BouncingCountFromPkgToDoc forKey:@"BouncingCountFromPkgToDoc"];
  [coderCopy encodeInt:self->BouncingCountFromDocToDir forKey:@"BouncingCountFromDocToDir"];
  [coderCopy encodeInt:self->BouncingCountFromDocToLnk forKey:@"BouncingCountFromDocToLnk"];
  [coderCopy encodeInt:self->BouncingCountFromDocToAls forKey:@"BouncingCountFromDocToAls"];
  [coderCopy encodeInt:self->BouncingCountFromDocToPkg forKey:@"BouncingCountFromDocToPkg"];
}

- (BRCBouncingReport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BRCBouncingReport;
  v5 = [(BRCBouncingReport *)&v7 init];
  if (v5)
  {
    v5->BouncingCountOnSameType = [coderCopy decodeIntForKey:@"BouncingCountOnSameType"];
    v5->BouncingCountFromDirToLnk = [coderCopy decodeIntForKey:@"BouncingCountFromDirToLnk"];
    v5->BouncingCountFromDirToAls = [coderCopy decodeIntForKey:@"BouncingCountFromDirToAls"];
    v5->BouncingCountFromDirToPkg = [coderCopy decodeIntForKey:@"BouncingCountFromDirToPkg"];
    v5->BouncingCountFromDirToDoc = [coderCopy decodeIntForKey:@"BouncingCountFromDirToDoc"];
    v5->BouncingCountFromLnkToDir = [coderCopy decodeIntForKey:@"BouncingCountFromLnkToDir"];
    v5->BouncingCountFromLnkToAls = [coderCopy decodeIntForKey:@"BouncingCountFromLnkToAls"];
    v5->BouncingCountFromLnkToPkg = [coderCopy decodeIntForKey:@"BouncingCountFromLnkToPkg"];
    v5->BouncingCountFromLnkToDoc = [coderCopy decodeIntForKey:@"BouncingCountFromLnkToDoc"];
    v5->BouncingCountFromAlsToDir = [coderCopy decodeIntForKey:@"BouncingCountFromAlsToDir"];
    v5->BouncingCountFromAlsToLnk = [coderCopy decodeIntForKey:@"BouncingCountFromAlsToLnk"];
    v5->BouncingCountFromAlsToPkg = [coderCopy decodeIntForKey:@"BouncingCountFromAlsToPkg"];
    v5->BouncingCountFromAlsToDoc = [coderCopy decodeIntForKey:@"BouncingCountFromAlsToDoc"];
    v5->BouncingCountFromPkgToDir = [coderCopy decodeIntForKey:@"BouncingCountFromPkgToDir"];
    v5->BouncingCountFromPkgToLnk = [coderCopy decodeIntForKey:@"BouncingCountFromPkgToLnk"];
    v5->BouncingCountFromPkgToAls = [coderCopy decodeIntForKey:@"BouncingCountFromPkgToAls"];
    v5->BouncingCountFromPkgToDoc = [coderCopy decodeIntForKey:@"BouncingCountFromPkgToDoc"];
    v5->BouncingCountFromDocToDir = [coderCopy decodeIntForKey:@"BouncingCountFromDocToDir"];
    v5->BouncingCountFromDocToLnk = [coderCopy decodeIntForKey:@"BouncingCountFromDocToLnk"];
    v5->BouncingCountFromDocToAls = [coderCopy decodeIntForKey:@"BouncingCountFromDocToAls"];
    v5->BouncingCountFromDocToPkg = [coderCopy decodeIntForKey:@"BouncingCountFromDocToPkg"];
  }

  return v5;
}

@end