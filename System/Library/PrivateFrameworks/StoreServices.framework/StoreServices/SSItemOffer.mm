@interface SSItemOffer
- (BOOL)isOneTapOffer;
- (BOOL)isPreorder;
- (BOOL)shouldShowPlusIcon;
- (NSArray)supportedDevices;
- (NSSet)accountIdentifiers;
- (NSString)actionDisplayName;
- (NSString)actionType;
- (NSString)buyParameters;
- (NSString)priceDisplay;
- (SSDialog)confirmationDialog;
- (SSDialog)successDialog;
- (SSItemMedia)offerMedia;
- (SSItemOffer)initWithOfferIdentifier:(id)identifier dictionary:(id)dictionary;
- (SSNetworkConstraints)networkConstraints;
- (id)allowedToneStyles;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)documentCannotOpenDialog;
- (id)documentRequiredHandlers;
- (id)documentUTI;
- (id)requiredSoftwareCapabilities;
- (id)valueForProperty:(id)property;
- (int64_t)estimatedDiskSpaceNeeded;
- (void)dealloc;
- (void)setActionDisplayName:(id)name;
- (void)setBuyParameters:(id)parameters;
- (void)setOneTapOffer:(BOOL)offer;
- (void)setPriceDisplay:(id)display;
@end

@implementation SSItemOffer

- (SSItemOffer)initWithOfferIdentifier:(id)identifier dictionary:(id)dictionary
{
  v8.receiver = self;
  v8.super_class = SSItemOffer;
  v6 = [(SSItemOffer *)&v8 init];
  if (v6)
  {
    v6->_offerDictionary = [dictionary mutableCopy];
    v6->_offerIdentifier = [identifier copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSItemOffer;
  [(SSItemOffer *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[2] = [(NSMutableDictionary *)self->_offerDictionary mutableCopyWithZone:zone];
  v5[3] = [(NSString *)self->_offerIdentifier copyWithZone:zone];
  v5[4] = [(NSArray *)self->_supportedDevices copyWithZone:zone];
  return v5;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = SSItemOffer;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: (%@: %@)", -[SSItemOffer description](&v3, sel_description), -[SSItemOffer offerIdentifier](self, "offerIdentifier"), -[SSItemOffer buyParameters](self, "buyParameters")];
}

- (NSString)actionDisplayName
{
  v2 = [(SSItemOffer *)self valueForProperty:@"action-display-name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)allowedToneStyles
{
  v3 = [(SSItemOffer *)self valueForProperty:@"allowed-tone-styles"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  isProtectedMedia = [(SSItemMedia *)[(SSItemOffer *)self offerMedia] isProtectedMedia];
  v6 = MEMORY[0x1E695DEC8];
  if (!isProtectedMedia)
  {
    return [MEMORY[0x1E695DEC8] arrayWithObjects:{@"ringtone", @"texttone", 0}];
  }

  return [v6 arrayWithObject:@"ringtone"];
}

- (NSString)buyParameters
{
  if ([(SSItem *)self->_item isRestricted])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(SSItemOffer *)self valueForProperty:@"action-params"];
    if (!v3)
    {
      v3 = [(SSItemOffer *)self valueForProperty:@"buy-params"];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (SSDialog)confirmationDialog
{
  v2 = [[SSDialog alloc] initWithDialogDictionary:[(NSMutableDictionary *)self->_offerDictionary objectForKey:@"confirmation-dialog"]];

  return v2;
}

- (id)documentCannotOpenDialog
{
  v2 = [[SSDialog alloc] initWithDialogDictionary:[(NSMutableDictionary *)self->_offerDictionary objectForKey:@"document-cannot-open-dialog"]];

  return v2;
}

- (id)documentRequiredHandlers
{
  v2 = [(SSItemOffer *)self valueForProperty:@"required-document-handlers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)documentUTI
{
  v2 = [(SSItemOffer *)self valueForProperty:@"UTI"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isOneTapOffer
{
  v2 = [(SSItemOffer *)self valueForProperty:@"should-show-confirmation"];
  if (objc_opt_respondsToSelector())
  {
    return [v2 BOOLValue] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isPreorder
{
  v2 = [(SSItemOffer *)self valueForProperty:@"is-preorder"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (SSNetworkConstraints)networkConstraints
{
  v2 = [(SSItemOffer *)self valueForProperty:@"network-constraints"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc_init(SSNetworkConstraints);
    [(SSNetworkConstraints *)v3 setSizeLimitsWithStoreConstraintDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SSItemMedia)offerMedia
{
  v3 = [[SSItemMedia alloc] initWithStoreOfferDictionary:self->_offerDictionary];
  item = self->_item;
  if (item)
  {
    mediaKind = [(SSItem *)item mediaKind];
LABEL_13:
    [(SSItemMedia *)v3 setMediaKind:mediaKind];
    goto LABEL_14;
  }

  offerIdentifier = self->_offerIdentifier;
  if (!offerIdentifier)
  {
    goto LABEL_14;
  }

  if ([(NSString *)offerIdentifier rangeOfString:@"video" options:1]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = SSItemMediaKindVideo;
    goto LABEL_12;
  }

  v7 = self->_offerIdentifier;
  if (!v7)
  {
    goto LABEL_14;
  }

  if ([(NSString *)v7 rangeOfString:@"audio" options:1]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = SSItemMediaKindAudio;
    goto LABEL_12;
  }

  v8 = self->_offerIdentifier;
  if (v8 && [(NSString *)v8 rangeOfString:@"document" options:1]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = SSItemMediaKindDocument;
LABEL_12:
    mediaKind = *v9;
    goto LABEL_13;
  }

LABEL_14:

  return v3;
}

- (NSString)priceDisplay
{
  v2 = [(SSItemOffer *)self valueForProperty:@"price-display"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (SSDialog)successDialog
{
  v2 = [[SSDialog alloc] initWithDialogDictionary:[(NSMutableDictionary *)self->_offerDictionary objectForKey:@"success-dialog"]];

  return v2;
}

- (NSArray)supportedDevices
{
  v18 = *MEMORY[0x1E69E9840];
  result = self->_supportedDevices;
  if (!result)
  {
    v4 = [(SSItemOffer *)self valueForProperty:@"supported-device-types"];
    if (!v4)
    {
      v4 = [(SSItemOffer *)self valueForProperty:@"supported-devices"];
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [[SSItemOfferDevice alloc] initWithOfferDeviceDicitionary:v10];
          }

          else
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }

            v11 = -[SSItemOfferDevice initWithDeviceIdentifier:]([SSItemOfferDevice alloc], "initWithDeviceIdentifier:", [v10 intValue]);
          }

          v12 = v11;
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    self->_supportedDevices = [v5 copy];

    return self->_supportedDevices;
  }

  return result;
}

- (id)valueForProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_offerDictionary objectForKey:property];

  return v3;
}

- (NSSet)accountIdentifiers
{
  v2 = [(SSItemOffer *)self valueForProperty:@"ds-ids"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFD8];

  return [v3 setWithArray:v2];
}

- (NSString)actionType
{
  v2 = [(SSItemOffer *)self valueForProperty:@"action-type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return @"buy";
  }
}

- (int64_t)estimatedDiskSpaceNeeded
{
  offerMedia = [(SSItemOffer *)self offerMedia];
  if (!offerMedia)
  {
    return 0;
  }

  v3 = offerMedia;
  mediaFileSize = [(SSItemMedia *)offerMedia mediaFileSize];
  if ([(NSString *)[(SSItemMedia *)v3 mediaKind] isEqualToString:@"software"])
  {
    return (mediaFileSize * 2.5);
  }

  return mediaFileSize;
}

- (id)requiredSoftwareCapabilities
{
  v2 = [(SSItemOffer *)self valueForProperty:@"UIRequiredDeviceCapabilities"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return v2;
}

- (void)setActionDisplayName:(id)name
{
  offerDictionary = self->_offerDictionary;
  if (name)
  {
    [(NSMutableDictionary *)offerDictionary setObject:name forKey:@"action-display-name"];
  }

  else
  {
    [(NSMutableDictionary *)offerDictionary removeObjectForKey:@"action-display-name"];
  }
}

- (void)setBuyParameters:(id)parameters
{
  offerDictionary = self->_offerDictionary;
  if (parameters)
  {

    [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
  }

  else
  {
    [(NSMutableDictionary *)offerDictionary removeObjectForKey:@"action-params"];
    v5 = self->_offerDictionary;

    [(NSMutableDictionary *)v5 removeObjectForKey:@"buy-params"];
  }
}

- (void)setOneTapOffer:(BOOL)offer
{
  offerDictionary = self->_offerDictionary;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:!offer];

  [(NSMutableDictionary *)offerDictionary setObject:v4 forKey:@"should-show-confirmation"];
}

- (void)setPriceDisplay:(id)display
{
  offerDictionary = self->_offerDictionary;
  if (display)
  {
    [(NSMutableDictionary *)offerDictionary setObject:display forKey:@"price-display"];
  }

  else
  {
    [(NSMutableDictionary *)offerDictionary removeObjectForKey:@"price-display"];
  }
}

- (BOOL)shouldShowPlusIcon
{
  v2 = [(SSItemOffer *)self valueForProperty:@"plus-icon-badge"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

@end