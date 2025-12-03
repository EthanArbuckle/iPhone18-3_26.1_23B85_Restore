@interface SKGProcessedItem
- (NSArray)keyphrases;
- (SKGEmbedding)embedding;
- (SKGProcessedItem)initWithReferenceIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class;
- (unint64_t)breadcrumbsCount;
- (unint64_t)keyphrasesCount;
- (void)addAddress:(id)address;
- (void)addAirportLocation:(id)location;
- (void)addAuthors:(id)authors;
- (void)addCurrency:(id)currency;
- (void)addDate:(id)date;
- (void)addDetectedCalendarEventTypes:(id)types;
- (void)addEmailAddress:(id)address;
- (void)addFlight:(id)flight;
- (void)addInteraction:(id)interaction score:(id)score;
- (void)addKeyphrase:(id)keyphrase;
- (void)addLink:(id)link;
- (void)addLocation:(id)location;
- (void)addNamedLocation:(id)location;
- (void)addOwners:(id)owners;
- (void)addParticipants:(id)participants;
- (void)addPhoneNumber:(id)number;
- (void)addPrimaryEmbedding:(id)embedding;
- (void)addRecipients:(id)recipients;
- (void)addSecondaryEmbedding:(id)embedding;
- (void)addTrackingNumber:(id)number;
- (void)clearKeyphrases;
- (void)removeEmbedding;
- (void)setEmbeddingFormat:(unint64_t)format;
- (void)setEmbeddingSize:(unint64_t)size;
@end

@implementation SKGProcessedItem

- (SKGProcessedItem)initWithReferenceIdentifier:(id)identifier personaIdentifier:(id)personaIdentifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class
{
  identifierCopy = identifier;
  personaIdentifierCopy = personaIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  classCopy = class;
  v29.receiver = self;
  v29.super_class = SKGProcessedItem;
  v14 = [(SKGProcessedItem *)&v29 init];
  if (v14)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(identifierCopy, "UTF8String")}];
    v16 = *(v14 + 31);
    *(v14 + 31) = v15;

    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(personaIdentifierCopy, "UTF8String")}];
    v18 = *(v14 + 32);
    *(v14 + 32) = v17;

    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(bundleIdentifierCopy, "UTF8String")}];
    v20 = *(v14 + 33);
    *(v14 + 33) = v19;

    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(classCopy, "UTF8String")}];
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

- (void)addKeyphrase:(id)keyphrase
{
  keyphraseCopy = keyphrase;
  keyphrases = self->_keyphrases;
  v21 = keyphraseCopy;
  if (!keyphrases)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_keyphrases;
    self->_keyphrases = v6;

    keyphraseCopy = v21;
    keyphrases = self->_keyphrases;
  }

  keyphrase = [keyphraseCopy keyphrase];
  v9 = [(NSMutableDictionary *)keyphrases objectForKeyedSubscript:keyphrase];

  if (v9)
  {
    v10 = self->_keyphrases;
    keyphrase2 = [v21 keyphrase];
    keyphrase4 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:keyphrase2];

    v13 = [keyphrase4 count];
    [v21 score];
    v15 = v14;
    [keyphrase4 score];
    if (v15 < v16)
    {
      v17 = v21;

      keyphrase4 = v17;
    }

    [keyphrase4 setCount:v13 + 1];
    v18 = self->_keyphrases;
    keyphrase3 = [v21 keyphrase];
    [(NSMutableDictionary *)v18 setObject:keyphrase4 forKeyedSubscript:keyphrase3];
  }

  else
  {
    [v21 setCount:1];
    v20 = self->_keyphrases;
    keyphrase4 = [v21 keyphrase];
    [(NSMutableDictionary *)v20 setObject:v21 forKeyedSubscript:keyphrase4];
  }
}

- (NSArray)keyphrases
{
  v3 = objc_autoreleasePoolPush();
  allValues = [(NSMutableDictionary *)self->_keyphrases allValues];
  v5 = [allValues sortedArrayUsingComparator:&__block_literal_global_37];

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

- (void)addEmailAddress:(id)address
{
  addressCopy = address;
  emailAddresses = self->_emailAddresses;
  v8 = addressCopy;
  if (!emailAddresses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_emailAddresses;
    self->_emailAddresses = v6;

    addressCopy = v8;
    emailAddresses = self->_emailAddresses;
  }

  [(NSMutableArray *)emailAddresses addObject:addressCopy];
}

- (void)addPhoneNumber:(id)number
{
  numberCopy = number;
  phoneNumbers = self->_phoneNumbers;
  v8 = numberCopy;
  if (!phoneNumbers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_phoneNumbers;
    self->_phoneNumbers = v6;

    numberCopy = v8;
    phoneNumbers = self->_phoneNumbers;
  }

  [(NSMutableArray *)phoneNumbers addObject:numberCopy];
}

- (void)addAddress:(id)address
{
  addressCopy = address;
  addresses = self->_addresses;
  v8 = addressCopy;
  if (!addresses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_addresses;
    self->_addresses = v6;

    addressCopy = v8;
    addresses = self->_addresses;
  }

  [(NSMutableArray *)addresses addObject:addressCopy];
}

- (void)addLocation:(id)location
{
  locationCopy = location;
  locations = self->_locations;
  v8 = locationCopy;
  if (!locations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_locations;
    self->_locations = v6;

    locationCopy = v8;
    locations = self->_locations;
  }

  [(NSMutableArray *)locations addObject:locationCopy];
}

- (void)addNamedLocation:(id)location
{
  locationCopy = location;
  namedLocations = self->_namedLocations;
  v8 = locationCopy;
  if (!namedLocations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_namedLocations;
    self->_namedLocations = v6;

    locationCopy = v8;
    namedLocations = self->_namedLocations;
  }

  [(NSMutableArray *)namedLocations addObject:locationCopy];
}

- (void)addAirportLocation:(id)location
{
  locationCopy = location;
  airportLocations = self->_airportLocations;
  v8 = locationCopy;
  if (!airportLocations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_airportLocations;
    self->_airportLocations = v6;

    locationCopy = v8;
    airportLocations = self->_airportLocations;
  }

  [(NSMutableArray *)airportLocations addObject:locationCopy];
}

- (void)addDate:(id)date
{
  dateCopy = date;
  dates = self->_dates;
  v8 = dateCopy;
  if (!dates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_dates;
    self->_dates = v6;

    dateCopy = v8;
    dates = self->_dates;
  }

  [(NSMutableArray *)dates addObject:dateCopy];
}

- (void)addFlight:(id)flight
{
  flightCopy = flight;
  flights = self->_flights;
  v8 = flightCopy;
  if (!flights)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_flights;
    self->_flights = v6;

    flightCopy = v8;
    flights = self->_flights;
  }

  [(NSMutableArray *)flights addObject:flightCopy];
}

- (void)addLink:(id)link
{
  linkCopy = link;
  links = self->_links;
  v8 = linkCopy;
  if (!links)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_links;
    self->_links = v6;

    linkCopy = v8;
    links = self->_links;
  }

  [(NSMutableArray *)links addObject:linkCopy];
}

- (void)addTrackingNumber:(id)number
{
  numberCopy = number;
  trackingNumbers = self->_trackingNumbers;
  v8 = numberCopy;
  if (!trackingNumbers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_trackingNumbers;
    self->_trackingNumbers = v6;

    numberCopy = v8;
    trackingNumbers = self->_trackingNumbers;
  }

  [(NSMutableArray *)trackingNumbers addObject:numberCopy];
}

- (void)addCurrency:(id)currency
{
  currencyCopy = currency;
  currencies = self->_currencies;
  v8 = currencyCopy;
  if (!currencies)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_currencies;
    self->_currencies = v6;

    currencyCopy = v8;
    currencies = self->_currencies;
  }

  [(NSMutableArray *)currencies addObject:currencyCopy];
}

- (void)addSecondaryEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  secondaryEmbeddings = self->_secondaryEmbeddings;
  v8 = embeddingCopy;
  if (!secondaryEmbeddings)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_secondaryEmbeddings;
    self->_secondaryEmbeddings = v6;

    embeddingCopy = v8;
    secondaryEmbeddings = self->_secondaryEmbeddings;
  }

  [(NSMutableArray *)secondaryEmbeddings addObject:embeddingCopy];
}

- (void)addPrimaryEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  primaryEmbeddings = self->_primaryEmbeddings;
  v8 = embeddingCopy;
  if (!primaryEmbeddings)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_primaryEmbeddings;
    self->_primaryEmbeddings = v6;

    embeddingCopy = v8;
    primaryEmbeddings = self->_primaryEmbeddings;
  }

  [(NSMutableArray *)primaryEmbeddings addObject:embeddingCopy];
}

- (void)addDetectedCalendarEventTypes:(id)types
{
  typesCopy = types;
  detectedCalendarEventTypes = self->_detectedCalendarEventTypes;
  v8 = typesCopy;
  if (!detectedCalendarEventTypes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_detectedCalendarEventTypes;
    self->_detectedCalendarEventTypes = v6;

    typesCopy = v8;
    detectedCalendarEventTypes = self->_detectedCalendarEventTypes;
  }

  [(NSMutableArray *)detectedCalendarEventTypes addObjectsFromArray:typesCopy];
}

- (void)setEmbeddingSize:(unint64_t)size
{
  v3 = 3;
  if (size == 768)
  {
    v3 = 2;
  }

  if (size == 512)
  {
    v3 = 1;
  }

  if (size == 256)
  {
    v3 = 0;
  }

  self->_embeddingSize = v3;
}

- (void)setEmbeddingFormat:(unint64_t)format
{
  v3 = 3;
  if (format == 1)
  {
    v3 = 1;
  }

  if (format == 2)
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

- (void)addOwners:(id)owners
{
  ownersCopy = owners;
  if (ownersCopy)
  {
    owners = self->_owners;
    v8 = ownersCopy;
    if (!owners)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_owners;
      self->_owners = v6;

      owners = self->_owners;
    }

    [(NSMutableSet *)owners addObjectsFromArray:v8];
    ownersCopy = v8;
  }
}

- (void)addAuthors:(id)authors
{
  authorsCopy = authors;
  if (authorsCopy)
  {
    authors = self->_authors;
    v8 = authorsCopy;
    if (!authors)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_authors;
      self->_authors = v6;

      authors = self->_authors;
    }

    [(NSMutableSet *)authors addObjectsFromArray:v8];
    authorsCopy = v8;
  }
}

- (void)addRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if (recipientsCopy)
  {
    recipients = self->_recipients;
    v8 = recipientsCopy;
    if (!recipients)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_recipients;
      self->_recipients = v6;

      recipients = self->_recipients;
    }

    [(NSMutableSet *)recipients addObjectsFromArray:v8];
    recipientsCopy = v8;
  }
}

- (void)addParticipants:(id)participants
{
  participantsCopy = participants;
  if (participantsCopy)
  {
    participants = self->_participants;
    v8 = participantsCopy;
    if (!participants)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_participants;
      self->_participants = v6;

      participants = self->_participants;
    }

    [(NSMutableSet *)participants addObjectsFromArray:v8];
    participantsCopy = v8;
  }
}

- (void)addInteraction:(id)interaction score:(id)score
{
  interactionCopy = interaction;
  scoreCopy = score;
  if (interactionCopy && scoreCopy)
  {
    interactions = self->_interactions;
    if (!interactions)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_interactions;
      self->_interactions = v8;

      interactions = self->_interactions;
    }

    [(NSMutableDictionary *)interactions setObject:scoreCopy forKey:interactionCopy];
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