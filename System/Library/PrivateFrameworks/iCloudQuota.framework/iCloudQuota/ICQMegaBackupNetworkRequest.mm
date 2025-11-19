@interface ICQMegaBackupNetworkRequest
@end

@implementation ICQMegaBackupNetworkRequest

void __51___ICQMegaBackupNetworkRequest__performURLRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51___ICQMegaBackupNetworkRequest__performURLRequest___block_invoke_2;
  v15[3] = &unk_27A651810;
  v15[4] = v10;
  v16 = v8;
  v17 = v7;
  v18 = v9;
  v12 = v9;
  v13 = v7;
  v14 = v8;
  dispatch_async(v11, v15);
}

uint64_t __51___ICQMegaBackupNetworkRequest__performURLRequest___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];

  return [v4 handleURLResponse:v5 data:v6 error:v7];
}

@end