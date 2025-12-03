@interface _WBUDynamicMeCard
+ (id)_contactObjectComponentForString:(id)string;
- (_WBUDynamicMeCard)init;
- (id)valueForProperty:(id)property contact:(id)contact;
- (void)_fetchContactKeysWithHandler:(id)handler;
- (void)_meCardChanged:(id)changed;
- (void)performWhenReady:(id)ready;
@end

@implementation _WBUDynamicMeCard

- (_WBUDynamicMeCard)init
{
  v7.receiver = self;
  v7.super_class = _WBUDynamicMeCard;
  v2 = [(_WBUDynamicMeCard *)&v7 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__meCardChanged_ name:*MEMORY[0x277CBD148] object:0];

    v4 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    v2->_meCardExists = [WBUFormDataController contactStoreHasMeCard:v4];

    v5 = v2;
  }

  return v2;
}

- (void)_meCardChanged:(id)changed
{
  me = self->_me;
  self->_me = 0;

  v5 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  self->_meCardExists = [WBUFormDataController contactStoreHasMeCard:v5];
}

- (id)valueForProperty:(id)property contact:(id)contact
{
  contactCopy = contact;
  v6 = [WBUFormDataController contactKeyForString:property];
  v7 = v6;
  v8 = 0;
  if (contactCopy && v6)
  {
    v8 = [contactCopy valueForKey:v6];
  }

  return v8;
}

- (void)performWhenReady:(id)ready
{
  readyCopy = ready;
  v5 = readyCopy;
  if (self->_me)
  {
    readyCopy[2](readyCopy);
    v6 = v5;
  }

  else
  {
    v6 = [readyCopy copy];

    blocksPendingMeCard = self->_blocksPendingMeCard;
    if (blocksPendingMeCard)
    {
      v8 = MEMORY[0x2743DCFC0](v6);
      [(NSMutableArray *)blocksPendingMeCard addObject:v8];
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277CBEB18]);
      v10 = MEMORY[0x2743DCFC0](v6);
      v11 = [v9 initWithObjects:{v10, 0}];
      v12 = self->_blocksPendingMeCard;
      self->_blocksPendingMeCard = v11;

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __38___WBUDynamicMeCard_performWhenReady___block_invoke;
      v17[3] = &unk_279EB1768;
      v17[4] = self;
      v13 = MEMORY[0x2743DCFC0](v17);
      if ([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] == 3)
      {
        [(_WBUDynamicMeCard *)self _fetchContactKeysWithHandler:v13];
      }

      else
      {
        v14 = objc_alloc_init(MEMORY[0x277CBDAB8]);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __38___WBUDynamicMeCard_performWhenReady___block_invoke_3;
        v15[3] = &unk_279EB1790;
        v15[4] = self;
        v16 = v13;
        [v14 requestAccessForEntityType:0 completionHandler:v15];
      }
    }
  }
}

- (void)_fetchContactKeysWithHandler:(id)handler
{
  v18[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  descriptorForRequiredKeys = [MEMORY[0x277CBDAC8] descriptorForRequiredKeys];
  v18[0] = descriptorForRequiredKeys;
  v5 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v18[1] = v5;
  v6 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1];
  v18[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];

  v8 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v9 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___WBUDynamicMeCard__fetchContactKeysWithHandler___block_invoke;
  block[3] = &unk_279EB17B8;
  v15 = v8;
  v16 = v7;
  v17 = handlerCopy;
  v10 = handlerCopy;
  v11 = v7;
  v12 = v8;
  dispatch_async(v9, block);

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)_contactObjectComponentForString:(id)string
{
  v18[8] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = _contactObjectComponentForString__map;
  if (!_contactObjectComponentForString__map)
  {
    v5 = *MEMORY[0x277CBD980];
    v17[0] = @"Street";
    v17[1] = @"City";
    v6 = *MEMORY[0x277CBD948];
    v18[0] = v5;
    v18[1] = v6;
    v7 = *MEMORY[0x277CBD978];
    v17[2] = @"State";
    v17[3] = @"ZIP";
    v8 = *MEMORY[0x277CBD968];
    v18[2] = v7;
    v18[3] = v8;
    v9 = *MEMORY[0x277CBD950];
    v17[4] = @"Country";
    v17[5] = @"ISOCountry";
    v10 = *MEMORY[0x277CBD958];
    v18[4] = v9;
    v18[5] = v10;
    v17[6] = @"Username";
    v17[7] = @"Service";
    v11 = *MEMORY[0x277CBD1E8];
    v18[6] = *MEMORY[0x277CBD1F0];
    v18[7] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:8];
    v13 = _contactObjectComponentForString__map;
    _contactObjectComponentForString__map = v12;

    v4 = _contactObjectComponentForString__map;
  }

  v14 = [v4 objectForKey:stringCopy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end