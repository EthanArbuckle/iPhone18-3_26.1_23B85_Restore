@interface VSUICKPEntryPoint
- (id)cardViewControllerForCard:(id)card;
- (unint64_t)displayPriorityForCard:(id)card;
@end

@implementation VSUICKPEntryPoint

- (unint64_t)displayPriorityForCard:(id)card
{
  interactions = [card interactions];
  anyObject = [interactions anyObject];
  v5 = 2 * (anyObject != 0);

  return v5;
}

- (id)cardViewControllerForCard:(id)card
{
  cardCopy = card;
  interactions = [cardCopy interactions];
  anyObject = [interactions anyObject];

  if (!anyObject)
  {
    v14 = 0;
    goto LABEL_20;
  }

  v6 = cardCopy;
  interactions2 = [v6 interactions];
  anyObject2 = [interactions2 anyObject];

  intent = [anyObject2 intent];
  _metadata = [intent _metadata];
  if (!intent)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && [_metadata executionContext] != 2 && objc_msgSend(_metadata, "executionContext") != 9)
  {
    if ([v6 asynchronous])
    {
      v12 = v6;
      goto LABEL_8;
    }

    if ([_metadata executionContext] == 1 || (objc_msgSend(_metadata, "hasExecutionContext") & 1) == 0)
    {
      v11 = VSUIAsyncLoadingCard;
      goto LABEL_7;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v11 = VSUIVoiceShortcutCard;
LABEL_7:
  v12 = [[v11 alloc] initWithCard:v6];
LABEL_8:
  v13 = v12;
LABEL_15:

  interactions3 = [v6 interactions];
  anyObject3 = [interactions3 anyObject];

  intent2 = [anyObject3 intent];
  _intentCategory = [intent2 _intentCategory];

  v19 = 0x277CF93C0;
  if (v13)
  {
    v6 = v13;
  }

  if (_intentCategory != 1)
  {
    v19 = off_279E52F80;
  }

  v14 = [objc_alloc(*v19) _initWithCard:v6 delegate:0 loadProvidersImmediately:0];

LABEL_20:

  return v14;
}

@end