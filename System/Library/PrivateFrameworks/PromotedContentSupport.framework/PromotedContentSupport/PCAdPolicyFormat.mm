@interface PCAdPolicyFormat
- (void)policiesForContainerType:(id)a3 adType:(id)a4 adFormatType:(id)a5 completion:(id)a6;
- (void)policiesToEnforce:(id)a3;
@end

@implementation PCAdPolicyFormat

- (void)policiesForContainerType:(id)a3 adType:(id)a4 adFormatType:(id)a5 completion:(id)a6
{
  v9 = a6;
  if (v9)
  {
    v10 = a5;
    v11 = a4;
    v12 = a3;
    v13 = objc_alloc_init(PCSupportRequester);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_260F21910;
    v14[3] = &unk_279AC9968;
    v15 = v9;
    [(PCSupportRequester *)v13 policiesForContainerType:v12 adType:v11 adFormatType:v10 completion:v14];
  }
}

- (void)policiesToEnforce:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(PCSupportRequester);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_260F219C8;
    v5[3] = &unk_279AC9968;
    v6 = v3;
    [(PCSupportRequester *)v4 policiesToEnforce:v5];
  }
}

@end