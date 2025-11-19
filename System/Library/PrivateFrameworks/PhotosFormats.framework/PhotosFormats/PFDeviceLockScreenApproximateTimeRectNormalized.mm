@interface PFDeviceLockScreenApproximateTimeRectNormalized
@end

@implementation PFDeviceLockScreenApproximateTimeRectNormalized

void __PFDeviceLockScreenApproximateTimeRectNormalized_SBS_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PFDeviceLockScreenApproximateTimeRectNormalized_SBS_block_invoke_2;
  v5[3] = &unk_1E7B652A0;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v1 fetchLimitedOcclusionBoundsForOrientation:v2 completionHandler:v5];
}

void __PFDeviceLockScreenApproximateTimeRectNormalized_SBS_block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = *(*(a1 + 40) + 8);
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v10[7] = a5;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v12 = a2;
    *&v12[1] = a3;
    *&v12[2] = a4;
    *&v12[3] = a5;
    v11 = [MEMORY[0x1E696B098] valueWithBytes:v12 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
    *buf = 138412290;
    v14 = v11;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PFDeviceLockScreenApproximateTimeRectNormalized_SBS] Using limited occlusion bounds for time rect: %@", buf, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

@end