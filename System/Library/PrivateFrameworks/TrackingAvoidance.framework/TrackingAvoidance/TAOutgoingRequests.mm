@interface TAOutgoingRequests
- (TAOutgoingRequests)initWithRequestKey:(id)key additionalInformation:(id)information date:(id)date;
- (id)description;
- (id)descriptionDictionary;
- (void)description;
@end

@implementation TAOutgoingRequests

- (TAOutgoingRequests)initWithRequestKey:(id)key additionalInformation:(id)information date:(id)date
{
  keyCopy = key;
  informationCopy = information;
  dateCopy = date;
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
  if (keyCopy && dateCopy)
  {
    v13 = [keyCopy copy];
    key = v11->_key;
    v11->_key = v13;

    if (informationCopy)
    {
      dictionary = [informationCopy copy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEAC0] dictionary];
    }

    additionalInformation = v11->_additionalInformation;
    v11->_additionalInformation = dictionary;

    v17 = [dateCopy copy];
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
  getDateString = [(NSDate *)self->_date getDateString];
  v11[2] = getDateString;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  descriptionDictionary = [(TAOutgoingRequests *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

- (void)description
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a3;
  _os_log_error_impl(&dword_26F2E2000, selfCopy, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end