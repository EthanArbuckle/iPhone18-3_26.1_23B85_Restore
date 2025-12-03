@interface PLProcessExitAggregator
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PLProcessExitAggregator

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setLabelIdx:{-[PLProcessExitAggregator labelIdx](self, "labelIdx")}];
  [v4 setLastTTR:{-[PLProcessExitAggregator lastTTR](self, "lastTTR")}];
  [v4 setExitReasonNamespace:{-[PLProcessExitAggregator exitReasonNamespace](self, "exitReasonNamespace")}];
  [v4 setExitReasonCode:{-[PLProcessExitAggregator exitReasonCode](self, "exitReasonCode")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (v5 = -[PLProcessExitAggregator labelIdx](self, "labelIdx"), v5 == objc_msgSend(equalCopy, "labelIdx")) && (v6 = -[PLProcessExitAggregator lastTTR](self, "lastTTR"), v6 == objc_msgSend(equalCopy, "lastTTR")) && (v7 = -[PLProcessExitAggregator exitReasonNamespace](self, "exitReasonNamespace"), v7 == objc_msgSend(equalCopy, "exitReasonNamespace")))
  {
    exitReasonCode = [(PLProcessExitAggregator *)self exitReasonCode];
    v9 = exitReasonCode == [equalCopy exitReasonCode];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PLProcessExitAggregator labelIdx](self, "labelIdx")}];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PLProcessExitAggregator lastTTR](self, "lastTTR")}];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PLProcessExitAggregator exitReasonNamespace](self, "exitReasonNamespace")}];
  v8 = [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PLProcessExitAggregator exitReasonCode](self, "exitReasonCode")}];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

@end