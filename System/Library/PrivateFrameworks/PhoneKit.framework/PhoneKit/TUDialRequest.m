@interface TUDialRequest
@end

@implementation TUDialRequest

id __83__TUDialRequest_PhoneKit__dialRequestByResolvingDialTypeUsingSenderIdentityClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 handle];
  v8 = [v7 value];

  if ([v8 length])
  {
    v9 = *(a1 + 32);
    v10 = [v6 UUID];
    LODWORD(v9) = [v9 isEmergencyNumberForDigits:v8 senderIdentityUUID:v10];

    if (v9)
    {
      [v5 setDialType:1];
    }
  }

  if ([v5 dialType] == 1 && objc_msgSend(*(a1 + 40), "canMakeEmergencyCallForSenderIdentity:", v6))
  {
    v11 = v6;
    v12 = PHDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_25E4EC000, v12, OS_LOG_TYPE_DEFAULT, "Updating emergency dial request %@ to use sender identity %@", &v17, 0x16u);
    }

    v13 = [v11 UUID];
    [v5 setLocalSenderIdentityUUID:v13];

    v14 = [v11 accountUUID];
    [v5 setLocalSenderIdentityAccountUUID:v14];
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

@end