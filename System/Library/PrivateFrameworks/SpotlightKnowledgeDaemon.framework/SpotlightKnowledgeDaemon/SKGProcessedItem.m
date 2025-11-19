@interface SKGProcessedItem
- (NSArray)keyphrases;
- (SKGEmbedding)embedding;
- (SKGProcessedItem)initWithReferenceIdentifier:(id)a3 personaIdentifier:(id)a4 bundleIdentifier:(id)a5 protectionClass:(id)a6;
- (unint64_t)breadcrumbsCount;
- (unint64_t)keyphrasesCount;
- (void)addAddress:(id)a3;
- (void)addAirportLocation:(id)a3;
- (void)addAuthors:(id)a3;
- (void)addCurrency:(id)a3;
- (void)addDate:(id)a3;
- (void)addDetectedCalendarEventTypes:(id)a3;
- (void)addEmailAddress:(id)a3;
- (void)addFlight:(id)a3;
- (void)addInteraction:(id)a3 score:(id)a4;
- (void)addKeyphrase:(id)a3;
- (void)addLink:(id)a3;
- (void)addLocation:(id)a3;
- (void)addNamedLocation:(id)a3;
- (void)addOwners:(id)a3;
- (void)addParticipants:(id)a3;
- (void)addPhoneNumber:(id)a3;
- (void)addPrimaryEmbedding:(id)a3;
- (void)addRecipients:(id)a3;
- (void)addSecondaryEmbedding:(id)a3;
- (void)addTrackingNumber:(id)a3;
- (void)clearKeyphrases;
- (void)removeEmbedding;
- (void)setEmbeddingFormat:(unint64_t)a3;
- (void)setEmbeddingSize:(unint64_t)a3;
@end

@implementation SKGProcessedItem

- (SKGProcessedItem)initWithReferenceIdentifier:(id)a3 personaIdentifier:(id)a4 bundleIdentifier:(id)a5 protectionClass:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29.receiver = self;
  v29.super_class = SKGProcessedItem;
  v14 = [(SKGProcessedItem *)&v29 init];
  if (v14)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v10, "UTF8String")}];
    v16 = *(v14 + 31);
    *(v14 + 31) = v15;

    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v11, "UTF8String")}];
    v18 = *(v14 + 32);
    *(v14 + 32) = v17;

    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v12, "UTF8String")}];
    v20 = *(v14 + 33);
    *(v14 + 33) = v19;

    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v13, "UTF8String")}];
    v22 = *(v14 + 34);
    *(v14 + 34) = v21;

    v23 = *(v14 + 26);
    *(v14 + 26) = 0;

    v24 = *(v14 + 15);
    *(v14 + 15) = 0;

    v25 = *(v14 + 16);
    *(v14 + 16) = 0;

    *(v14 + 27) = 0;
    *(v14 + 229) = 0;
    *(v14 + 136) = 0u;
    *(v14 + 152) = 0u;
    v26 = *(v14 + 14);
    *(v14 + 14) = 0;

    v27 = *(v14 + 21);
    *(v14 + 21) = 0;

    v14[224] = SKGBundleIsMail();
    v14[225] = SKGBundleIsSafari();
    v14[226] = SKGBundleIsCalendar();
    v14[227] = SKGBundleIsMessages();
    v14[228] = SKGBundleIsPommesCtl();
    [v14 setDidProcessPeople:0];
    [v14 setErrorProcessingPeople:0];
    [v14 setDidProcessCalendarEvents:0];
    [v14 setDidProcessKeyphrases:0];
    [v14 setErrorProcessingKeyphrases:0];
    [v14 setDidProcessBreadcrumbs:0];
    [v14 setDidMakePIRCall:0];
    [v14 setErrorCallingPIR:0];
    [v14 setDidProcessEmbeddings:0];
    [v14 setErrorProcessingEmbeddings:0];
  }

  return v14;
}

- (unint64_t)keyphrasesCount
{
  result = self->_keyphrases;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (unint64_t)breadcrumbsCount
{
  emailAddresses = self->_emailAddresses;
  if (emailAddresses)
  {
    v4 = [(NSMutableArray *)emailAddresses count];
  }

  else
  {
    v4 = 0;
  }

  phoneNumbers = self->_phoneNumbers;
  if (phoneNumbers)
  {
    v6 = [(NSMutableArray *)phoneNumbers count];
  }

  else
  {
    v6 = 0;
  }

  addresses = self->_addresses;
  if (addresses)
  {
    v8 = [(NSMutableArray *)addresses count];
  }

  else
  {
    v8 = 0;
  }

  locations = self->_locations;
  if (locations)
  {
    v10 = [(NSMutableArray *)locations count];
  }

  else
  {
    v10 = 0;
  }

  namedLocations = self->_namedLocations;
  if (namedLocations)
  {
    v12 = [(NSMutableArray *)namedLocations count];
  }

  else
  {
    v12 = 0;
  }

  dates = self->_dates;
  if (dates)
  {
    v14 = [(NSMutableArray *)dates count];
  }

  else
  {
    v14 = 0;
  }

  flights = self->_flights;
  if (flights)
  {
    v16 = [(NSMutableArray *)flights count];
  }

  else
  {
    v16 = 0;
  }

  links = self->_links;
  if (links)
  {
    v18 = [(NSMutableArray *)links count];
  }

  else
  {
    v18 = 0;
  }

  trackingNumbers = self->_trackingNumbers;
  if (trackingNumbers)
  {
    v20 = [(NSMutableArray *)trackingNumbers count];
  }

  else
  {
    v20 = 0;
  }

  currencies = self->_currencies;
  if (currencies)
  {
    currencies = [(NSMutableArray *)currencies count];
  }

  return currencies + v18 + v20 + v6 + v4 + v8 + v10 + v12 + v14 + v16;
}

- (void)clearKeyphrases
{
  keyphrases = self->_keyphrases;
  self->_keyphrases = 0;
}

- (void)addKeyphrase:(id)a3
{
  v4 = a3;
  keyphrases = self->_keyphrases;
  v21 = v4;
  if (!keyphrases)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_keyphrases;
    self->_keyphrases = v6;

    v4 = v21;
    keyphrases = self->_keyphrases;
  }

  v8 = [v4 keyphrase];
  v9 = [(NSMutableDictionary *)keyphrases objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = self->_keyphrases;
    v11 = [v21 keyphrase];
    v12 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v11];

    v13 = [v12 count];
    [v21 score];
    v15 = v14;
    [v12 score];
    if (v15 < v16)
    {
      v17 = v21;

      v12 = v17;
    }

    [v12 setCount:v13 + 1];
    v18 = self->_keyphrases;
    v19 = [v21 keyphrase];
    [(NSMutableDictionary *)v18 setObject:v12 forKeyedSubscript:v19];
  }

  else
  {
    [v21 setCount:1];
    v20 = self->_keyphrases;
    v12 = [v21 keyphrase];
    [(NSMutableDictionary *)v20 setObject:v21 forKeyedSubscript:v12];
  }
}

- (NSArray)keyphrases
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSMutableDictionary *)self->_keyphrases allValues];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_37];

  objc_autoreleasePoolPop(v3);

  return v5;
}

uint64_t __30__SKGProcessedItem_keyphrases__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 tokenCount];
  if (v8 == [v7 tokenCount])
  {
    v9 = [v6 count];
    if (v9 == [v7 count])
    {
      [v6 score];
      if (v10 >= 0.0)
      {
        [v7 score];
        if (v11 < 0.0)
        {
          v12 = -1;
          goto LABEL_20;
        }
      }

      [v6 score];
      if (v15 >= 0.0 || ([v7 score], v16 < 0.0))
      {
        [v6 score];
        v18 = fabs(v17);
        [v7 score];
        if (v18 >= fabs(v19))
        {
          v12 = 1;
        }

        else
        {
          v12 = -1;
        }

        goto LABEL_20;
      }

LABEL_7:
      v12 = 1;
      goto LABEL_20;
    }

    v13 = [v6 count];
    if (v13 > [v7 count])
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    if ([v6 tokenCount] == 1)
    {
      goto LABEL_7;
    }

    v12 = -1;
    if ([v7 tokenCount] != 1)
    {
      v14 = [v6 tokenCount];
      if (v14 >= [v7 tokenCount])
      {
        v12 = 1;
      }
    }
  }

LABEL_20:

  return v12;
}

- (void)addEmailAddress:(id)a3
{
  v4 = a3;
  emailAddresses = self->_emailAddresses;
  v8 = v4;
  if (!emailAddresses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_emailAddresses;
    self->_emailAddresses = v6;

    v4 = v8;
    emailAddresses = self->_emailAddresses;
  }

  [(NSMutableArray *)emailAddresses addObject:v4];
}

- (void)addPhoneNumber:(id)a3
{
  v4 = a3;
  phoneNumbers = self->_phoneNumbers;
  v8 = v4;
  if (!phoneNumbers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_phoneNumbers;
    self->_phoneNumbers = v6;

    v4 = v8;
    phoneNumbers = self->_phoneNumbers;
  }

  [(NSMutableArray *)phoneNumbers addObject:v4];
}

- (void)addAddress:(id)a3
{
  v4 = a3;
  addresses = self->_addresses;
  v8 = v4;
  if (!addresses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_addresses;
    self->_addresses = v6;

    v4 = v8;
    addresses = self->_addresses;
  }

  [(NSMutableArray *)addresses addObject:v4];
}

- (void)addLocation:(id)a3
{
  v4 = a3;
  locations = self->_locations;
  v8 = v4;
  if (!locations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_locations;
    self->_locations = v6;

    v4 = v8;
    locations = self->_locations;
  }

  [(NSMutableArray *)locations addObject:v4];
}

- (void)addNamedLocation:(id)a3
{
  v4 = a3;
  namedLocations = self->_namedLocations;
  v8 = v4;
  if (!namedLocations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_namedLocations;
    self->_namedLocations = v6;

    v4 = v8;
    namedLocations = self->_namedLocations;
  }

  [(NSMutableArray *)namedLocations addObject:v4];
}

- (void)addAirportLocation:(id)a3
{
  v4 = a3;
  airportLocations = self->_airportLocations;
  v8 = v4;
  if (!airportLocations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_airportLocations;
    self->_airportLocations = v6;

    v4 = v8;
    airportLocations = self->_airportLocations;
  }

  [(NSMutableArray *)airportLocations addObject:v4];
}

- (void)addDate:(id)a3
{
  v4 = a3;
  dates = self->_dates;
  v8 = v4;
  if (!dates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_dates;
    self->_dates = v6;

    v4 = v8;
    dates = self->_dates;
  }

  [(NSMutableArray *)dates addObject:v4];
}

- (void)addFlight:(id)a3
{
  v4 = a3;
  flights = self->_flights;
  v8 = v4;
  if (!flights)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_flights;
    self->_flights = v6;

    v4 = v8;
    flights = self->_flights;
  }

  [(NSMutableArray *)flights addObject:v4];
}

- (void)addLink:(id)a3
{
  v4 = a3;
  links = self->_links;
  v8 = v4;
  if (!links)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_links;
    self->_links = v6;

    v4 = v8;
    links = self->_links;
  }

  [(NSMutableArray *)links addObject:v4];
}

- (void)addTrackingNumber:(id)a3
{
  v4 = a3;
  trackingNumbers = self->_trackingNumbers;
  v8 = v4;
  if (!trackingNumbers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_trackingNumbers;
    self->_trackingNumbers = v6;

    v4 = v8;
    trackingNumbers = self->_trackingNumbers;
  }

  [(NSMutableArray *)trackingNumbers addObject:v4];
}

- (void)addCurrency:(id)a3
{
  v4 = a3;
  currencies = self->_currencies;
  v8 = v4;
  if (!currencies)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_currencies;
    self->_currencies = v6;

    v4 = v8;
    currencies = self->_currencies;
  }

  [(NSMutableArray *)currencies addObject:v4];
}

- (void)addSecondaryEmbedding:(id)a3
{
  v4 = a3;
  secondaryEmbeddings = self->_secondaryEmbeddings;
  v8 = v4;
  if (!secondaryEmbeddings)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_secondaryEmbeddings;
    self->_secondaryEmbeddings = v6;

    v4 = v8;
    secondaryEmbeddings = self->_secondaryEmbeddings;
  }

  [(NSMutableArray *)secondaryEmbeddings addObject:v4];
}

- (void)addPrimaryEmbedding:(id)a3
{
  v4 = a3;
  primaryEmbeddings = self->_primaryEmbeddings;
  v8 = v4;
  if (!primaryEmbeddings)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_primaryEmbeddings;
    self->_primaryEmbeddings = v6;

    v4 = v8;
    primaryEmbeddings = self->_primaryEmbeddings;
  }

  [(NSMutableArray *)primaryEmbeddings addObject:v4];
}

- (void)addDetectedCalendarEventTypes:(id)a3
{
  v4 = a3;
  detectedCalendarEventTypes = self->_detectedCalendarEventTypes;
  v8 = v4;
  if (!detectedCalendarEventTypes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_detectedCalendarEventTypes;
    self->_detectedCalendarEventTypes = v6;

    v4 = v8;
    detectedCalendarEventTypes = self->_detectedCalendarEventTypes;
  }

  [(NSMutableArray *)detectedCalendarEventTypes addObjectsFromArray:v4];
}

- (void)setEmbeddingSize:(unint64_t)a3
{
  v3 = 3;
  if (a3 == 768)
  {
    v3 = 2;
  }

  if (a3 == 512)
  {
    v3 = 1;
  }

  if (a3 == 256)
  {
    v3 = 0;
  }

  self->_embeddingSize = v3;
}

- (void)setEmbeddingFormat:(unint64_t)a3
{
  v3 = 3;
  if (a3 == 1)
  {
    v3 = 1;
  }

  if (a3 == 2)
  {
    v3 = 0;
  }

  self->_embeddingFormat = v3;
}

- (void)removeEmbedding
{
  primaryEmbeddings = self->_primaryEmbeddings;
  self->_primaryEmbeddings = 0;

  secondaryEmbeddings = self->_secondaryEmbeddings;
  self->_secondaryEmbeddings = 0;

  *&self->_embeddingFormat = 0u;
  *&self->_firstChunkLength = 0u;
}

- (void)addOwners:(id)a3
{
  v4 = a3;
  if (v4)
  {
    owners = self->_owners;
    v8 = v4;
    if (!owners)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_owners;
      self->_owners = v6;

      owners = self->_owners;
    }

    [(NSMutableSet *)owners addObjectsFromArray:v8];
    v4 = v8;
  }
}

- (void)addAuthors:(id)a3
{
  v4 = a3;
  if (v4)
  {
    authors = self->_authors;
    v8 = v4;
    if (!authors)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_authors;
      self->_authors = v6;

      authors = self->_authors;
    }

    [(NSMutableSet *)authors addObjectsFromArray:v8];
    v4 = v8;
  }
}

- (void)addRecipients:(id)a3
{
  v4 = a3;
  if (v4)
  {
    recipients = self->_recipients;
    v8 = v4;
    if (!recipients)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_recipients;
      self->_recipients = v6;

      recipients = self->_recipients;
    }

    [(NSMutableSet *)recipients addObjectsFromArray:v8];
    v4 = v8;
  }
}

- (void)addParticipants:(id)a3
{
  v4 = a3;
  if (v4)
  {
    participants = self->_participants;
    v8 = v4;
    if (!participants)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_participants;
      self->_participants = v6;

      participants = self->_participants;
    }

    [(NSMutableSet *)participants addObjectsFromArray:v8];
    v4 = v8;
  }
}

- (void)addInteraction:(id)a3 score:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10 && v6)
  {
    interactions = self->_interactions;
    if (!interactions)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_interactions;
      self->_interactions = v8;

      interactions = self->_interactions;
    }

    [(NSMutableDictionary *)interactions setObject:v6 forKey:v10];
  }
}

- (SKGEmbedding)embedding
{
  if (self->_primaryEmbeddings || self->_secondaryEmbeddings)
  {
    v3 = objc_alloc_init(SKGEmbedding);
    [(SKGEmbedding *)v3 setSecondaryEmbeddings:self->_secondaryEmbeddings];
    [(SKGEmbedding *)v3 setPrimaryEmbeddings:self->_primaryEmbeddings];
    [(SKGEmbedding *)v3 setFirstChunkLength:self->_firstChunkLength];
    [(SKGEmbedding *)v3 setSize:self->_embeddingSize];
    [(SKGEmbedding *)v3 setFormat:self->_embeddingFormat];
    [(SKGEmbedding *)v3 setVersion:self->_embeddingVersion];
    [(SKGEmbedding *)v3 setFsIndexDataContentVersion:self->_fsIndexDataContentVersion];
    [(SKGEmbedding *)v3 setIsFileSystemConsistent:self->_isFileSystemConsistent];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end