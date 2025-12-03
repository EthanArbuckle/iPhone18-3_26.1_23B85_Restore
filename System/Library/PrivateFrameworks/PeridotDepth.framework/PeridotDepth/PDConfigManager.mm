@interface PDConfigManager
- (PDConfigManager)init;
- (id)currentOnlineRequest;
- (id)updateAnchors:(PDAnchors *)anchors;
- (void)commit;
@end

@implementation PDConfigManager

- (void)commit
{
  if (*&self->_ispRequest.gatingen[22][3].all)
  {
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:&self->_ispRequest length:960];
    v4 = *&self->_ispRequest.gatingen[22][3].all;
    v5 = *&self->_ispRequest.gatingen[22][5].all;
    v6 = v5;
    if (v5)
    {
      v7 = *&self->_ispRequest.gatingen[22][1].all;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __25__PDConfigManager_commit__block_invoke;
      block[3] = &unk_27852C6A8;
      v10 = v5;
      v11 = v3;
      v12 = v4;
      dispatch_async(v7, block);
    }

    v8 = *&self->_ispRequest.gatingen[22][3].all;
    *&self->_ispRequest.gatingen[22][3].all = 0;

    bzero(&self->_ispRequest, 0x3C0uLL);
  }
}

void __25__PDConfigManager_commit__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) onlineConfig:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    peridot_depth_log("Online request sent. Will be applied with config ID %lu", v2);
    v4 = *(a1 + 48);

    [v4 updateWithConfigID:v3];
  }

  else
  {

    peridot_depth_log("Sending online update request to ISP failed");
  }
}

- (id)updateAnchors:(PDAnchors *)anchors
{
  p_useNorthHS2 = &anchors->banks[0].anchors[6].useNorthHS2;
  v4 = 767;
  v5 = 544;
  do
  {
    v6 = self + v4;
    *(v6 - 27) = *(p_useNorthHS2 - 10);
    v7 = self + v5;
    *v7 = *(p_useNorthHS2 - 18);
    *(v6 - 25) = *(p_useNorthHS2 - 17);
    v7[1] = *(p_useNorthHS2 - 15);
    *(v6 - 23) = *(p_useNorthHS2 - 7);
    v7[2] = *(p_useNorthHS2 - 12);
    *(v6 - 21) = *(p_useNorthHS2 - 11);
    *(v6 - 20) = *(p_useNorthHS2 - 10);
    v7[3] = *(p_useNorthHS2 - 9);
    *(v6 - 19) = *(p_useNorthHS2 - 8);
    *(v6 - 18) = *(p_useNorthHS2 - 7);
    v7[4] = *(p_useNorthHS2 - 6);
    *(v6 - 17) = *(p_useNorthHS2 - 5);
    *(v6 - 16) = *(p_useNorthHS2 - 4);
    v7[5] = *(p_useNorthHS2 - 3);
    *(v6 - 15) = *(p_useNorthHS2 - 2);
    *(v6 - 14) = *(p_useNorthHS2 - 1);
    v7[6] = *p_useNorthHS2;
    *(v6 - 13) = p_useNorthHS2[1];
    *(v6 - 12) = p_useNorthHS2[2];
    v7[7] = p_useNorthHS2[3];
    *(v6 - 11) = p_useNorthHS2[4];
    *(v6 - 10) = p_useNorthHS2[5];
    v7[8] = p_useNorthHS2[6];
    *(v6 - 9) = p_useNorthHS2[7];
    *(v6 - 8) = p_useNorthHS2[8];
    v7[9] = p_useNorthHS2[9];
    *(v6 - 7) = p_useNorthHS2[10];
    *(v6 - 6) = p_useNorthHS2[11];
    v7[10] = p_useNorthHS2[12];
    *(v6 - 5) = p_useNorthHS2[13];
    *(v6 - 4) = p_useNorthHS2[14];
    v7[11] = p_useNorthHS2[15];
    *(v6 - 3) = p_useNorthHS2[16];
    *(v6 - 2) = p_useNorthHS2[17];
    v7[12] = p_useNorthHS2[18];
    *(v6 - 1) = p_useNorthHS2[19];
    *v6 = p_useNorthHS2[20];
    v7[13] = p_useNorthHS2[21];
    v4 += 28;
    p_useNorthHS2 += 42;
    v5 += 14;
  }

  while (v4 != 991);
  self->_ispRequest.onlineConfigBm |= 0x90u;
  return [(PDConfigManager *)self currentOnlineRequest];
}

- (id)currentOnlineRequest
{
  v3 = *&self->_ispRequest.gatingen[22][3].all;
  if (!v3)
  {
    v4 = objc_opt_new();
    v5 = *&self->_ispRequest.gatingen[22][3].all;
    *&self->_ispRequest.gatingen[22][3].all = v4;

    v3 = *&self->_ispRequest.gatingen[22][3].all;
  }

  return v3;
}

- (PDConfigManager)init
{
  v6.receiver = self;
  v6.super_class = PDConfigManager;
  v2 = [(PDConfigManager *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("PeridotDepth online updates", 0);
    v4 = *&v2->_ispRequest.gatingen[22][1].all;
    *&v2->_ispRequest.gatingen[22][1].all = v3;

    bzero(&v2->_ispRequest, 0x3C0uLL);
  }

  return v2;
}

@end