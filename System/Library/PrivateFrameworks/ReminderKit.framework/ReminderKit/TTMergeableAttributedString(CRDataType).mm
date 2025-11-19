@interface TTMergeableAttributedString(CRDataType)
@end

@implementation TTMergeableAttributedString(CRDataType)

- (void)encodeWithCRCoder:()CRDataType .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_fault_impl(&dword_19A0DB000, a1, OS_LOG_TYPE_FAULT, "rem_log_fault_if (self.document.sharedTopotextTimestamp != self.timestamp) -- Timestamp should be the same the as one in document.", v2, 2u);
  }
}

@end