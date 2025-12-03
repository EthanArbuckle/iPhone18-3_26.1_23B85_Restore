@interface IPAAdjustmentEnvelope
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
@end

@implementation IPAAdjustmentEnvelope

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9 = *&self->_originator;
  formatVersion = self->_formatVersion;
  adjustmentStack = self->_adjustmentStack;
  adjustments = [(IPAAdjustmentStack *)adjustmentStack adjustments];
  v7 = [v3 stringWithFormat:@"<IPAAdjEnv:%p originator=%@ format=%@ formatVersion=%@ adjustments(%p).count=%lu>", self, v9, formatVersion, adjustmentStack, objc_msgSend(adjustments, "count")];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_adjustmentStack);
    objc_storeStrong(v5 + 2, self->_originator);
    objc_storeStrong(v5 + 3, self->_format);
    objc_storeStrong(v5 + 4, self->_formatVersion);
  }

  return v5;
}

@end