@interface TAOutgoingRequests
- (TAOutgoingRequests)initWithRequestKey:(id)a3 additionalInformation:(id)a4 date:(id)a5;
- (id)description;
- (id)descriptionDictionary;
- (void)description;
@end

@implementation TAOutgoingRequests

- (TAOutgoingRequests)initWithRequestKey:(id)a3 additionalInformation:(id)a4 date:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = TAOutgoingRequests;
  v11 = [(TAOutgoingRequests *)&v20 init];
  if (!v11)
  {
LABEL_8:
    v12 = v11;
    goto LABEL_9;
  }

  v12 = 0;
  if (v8 && v10)
  {
    v13 = [v8 copy];
    key = v11->_key;
    v11->_key = v13;

    if (v9)
    {
      v15 = [v9 copy];
    }

    else
    {
      v15 = [MEMORY[0x277CBEAC0] dictionary];
    }

    additionalInformation = v11->_additionalInformation;
    v11->_additionalInformation = v15;

    v17 = [v10 copy];
    date = v11->_date;
    v11->_date = v17;

    goto LABEL_8;
  }

LABEL_9:

  return v12;
}

- (id)descriptionDictionary
{
  v11[3] = *MEMORY[0x277D85DE8];
  key = self->_key;
  additionalInformation = self->_additionalInformation;
  v11[0] = key;
  v10[0] = @"Key";
  v10[1] = @"AdditionalInformation";
  v5 = [(NSDictionary *)additionalInformation description];
  v11[1] = v5;
  v10[2] = @"Date";
  v6 = [(NSDate *)self->_date getDateString];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = [(TAOutgoingRequests *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    v7 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (void)description
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a3;
  _os_log_error_impl(&dword_26F2E2000, v4, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end