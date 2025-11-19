@interface SMUFairPlayKeyDelivery
- (id)remoteServerPlaybackContextForCertificate:(id)a3 error:(id *)a4;
- (id)serverPlaybackContextForPlaybackContext:(id)a3 remoteContextIdentifier:(unsigned int)a4 error:(id *)a5;
@end

@implementation SMUFairPlayKeyDelivery

- (id)remoteServerPlaybackContextForCertificate:(id)a3 error:(id *)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB38];
  v6 = a3;
  v7 = [v5 dictionaryWithCapacity:2];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v9 = [MEMORY[0x277CCACA8] stringWithCString:"gaX8gT7e" encoding:4];
  [v7 setObject:&unk_287791EF8 forKey:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithCString:"Y7bdIsnh7" encoding:4];
  [v7 setObject:v6 forKey:v10];

  v11 = nS1Q9ljw9esy9(v7, v8);
  if (v11)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v11 userInfo:0];
    v13 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA7E8];
    v23[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v15 = [v13 errorWithDomain:@"SMUFairPlayKeyDeliveryErrorDomain" code:0 userInfo:v14];
  }

  else
  {
    v18 = [MEMORY[0x277CCACA8] stringWithCString:"xNJu5eepP" encoding:4];
    v12 = [v8 objectForKey:v18];

    if (v12)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithCString:"rGLU5bt2" encoding:4];
      v15 = [v8 objectForKey:v19];

      if (v15)
      {
        v17 = -[SMUFairPlayRemoteServerPlaybackContext initWithBlob:identifier:]([SMUFairPlayRemoteServerPlaybackContext alloc], "initWithBlob:identifier:", v12, [v15 unsignedIntValue]);

        v15 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SMUFairPlayKeyDeliveryErrorDomain" code:1 userInfo:0];
    }
  }

  if (a4)
  {
    v16 = v15;
    v17 = 0;
    *a4 = v15;
  }

  else
  {
    v17 = 0;
  }

LABEL_9:

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)serverPlaybackContextForPlaybackContext:(id)a3 remoteContextIdentifier:(unsigned int)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v17 = 0;
  v7 = a3;
  BytePtr = CFDataGetBytePtr(v7);
  Length = CFDataGetLength(v7);

  v10 = f5zGmdURga6BZ(a4, BytePtr, Length, &v18, &v17);
  if (v10)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v10 userInfo:0];
    v12 = v11;
    if (a5)
    {
      v13 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA7E8];
      v20[0] = v11;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *a5 = [v13 errorWithDomain:@"SMUFairPlayKeyDeliveryErrorDomain" code:0 userInfo:v14];

      a5 = 0;
    }
  }

  else
  {
    a5 = [MEMORY[0x277CBEA90] dataWithBytes:v18 length:v17];
    v12 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return a5;
}

@end