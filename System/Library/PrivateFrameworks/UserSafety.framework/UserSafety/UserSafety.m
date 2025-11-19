id USError(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = a2;
  v5 = [v3 alloc];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v7 = [v5 initWithDomain:@"com.apple.UserSafety" code:a1 userInfo:v6];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id USErrorCausedBy(uint64_t a1, void *a2, void *a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = a2;
    v8 = [v6 alloc];
    v9 = *MEMORY[0x277CCA7E8];
    v15[0] = *MEMORY[0x277CCA450];
    v15[1] = v9;
    v16[0] = v7;
    v16[1] = v5;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

    v11 = [v8 initWithDomain:@"com.apple.UserSafety" code:a1 userInfo:v10];
  }

  else
  {
    v12 = a2;
    v11 = USError(a1, v12);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}