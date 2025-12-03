@interface SKUICounterViewElement
- (SKUICounterViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
- (int64_t)currentNumberValue;
@end

@implementation SKUICounterViewElement

- (SKUICounterViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICounterViewElement initWithDOMElement:parent:elementFactory:];
  }

  v28.receiver = self;
  v28.super_class = SKUICounterViewElement;
  v11 = [(SKUIViewElement *)&v28 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v12 = [elementCopy getAttribute:@"type"];
    v11->_counterType = [v12 isEqualToString:@"timer"] ^ 1;
    v13 = [elementCopy getAttribute:@"dateFormat"];

    if ([v13 isEqualToString:@"hm"])
    {
      v14 = 3;
    }

    else if ([v13 isEqualToString:@"hms"])
    {
      v14 = 2;
    }

    else
    {
      if ([v13 isEqualToString:@"dhms"])
      {
        v11->_dateFormatType = 0;
LABEL_14:
        v15 = [elementCopy getAttribute:@"endDate"];

        if ([v15 length])
        {
          v16 = SKUIViewElementDateWithString(v15);
          endDate = v11->_endDate;
          v11->_endDate = v16;
        }

        v18 = [elementCopy getAttribute:@"timestamp"];

        if ([v18 length])
        {
          v19 = SKUIViewElementDateWithString(v18);
          startValueDate = v11->_startValueDate;
          v11->_startValueDate = v19;
        }

        v21 = [elementCopy getAttribute:@"rate"];
        [v21 doubleValue];
        v11->_changeRatePerSecond = v22;

        v23 = [elementCopy getAttribute:@"numberFormat"];
        numberFormat = v11->_numberFormat;
        v11->_numberFormat = v23;

        v25 = [elementCopy getAttribute:@"value"];
        v11->_startValue = [v25 longLongValue];

        v26 = [elementCopy getAttribute:@"endValue"];
        v11->_stopValue = [v26 longLongValue];

        goto LABEL_19;
      }

      v14 = 1;
    }

    v11->_dateFormatType = v14;
    goto LABEL_14;
  }

LABEL_19:

  return v11;
}

- (int64_t)currentNumberValue
{
  stopValue = [(SKUICounterViewElement *)self stopValue];
  startValueDate = [(SKUICounterViewElement *)self startValueDate];
  if (startValueDate)
  {
    [(SKUICounterViewElement *)self changeRatePerSecond];
    v6 = v5;
    startValue = [(SKUICounterViewElement *)self startValue];
    date = [MEMORY[0x277CBEAA8] date];
    startValueDate2 = [(SKUICounterViewElement *)self startValueDate];
    [date timeIntervalSinceDate:startValueDate2];
    v11 = (startValue + v10 * v6);

    if (stopValue >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = stopValue;
    }

    if (stopValue <= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = stopValue;
    }

    if (v6 >= 0.0)
    {
      stopValue = v12;
    }

    else
    {
      stopValue = v13;
    }
  }

  return stopValue;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v15.receiver = self;
  v15.super_class = SKUICounterViewElement;
  v5 = [(SKUIViewElement *)&v15 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self && v5 == self)
  {
    [(SKUICounterViewElement *)elementCopy changeRatePerSecond];
    self->_changeRatePerSecond = v7;
    self->_counterType = [(SKUICounterViewElement *)elementCopy counterType];
    self->_dateFormatType = [(SKUICounterViewElement *)elementCopy dateFormatType];
    endDate = [(SKUICounterViewElement *)elementCopy endDate];
    endDate = self->_endDate;
    self->_endDate = endDate;

    numberFormat = [(SKUICounterViewElement *)elementCopy numberFormat];
    numberFormat = self->_numberFormat;
    self->_numberFormat = numberFormat;

    self->_startValue = [(SKUICounterViewElement *)elementCopy startValue];
    startValueDate = [(SKUICounterViewElement *)elementCopy startValueDate];
    startValueDate = self->_startValueDate;
    self->_startValueDate = startValueDate;

    self->_stopValue = [(SKUICounterViewElement *)elementCopy stopValue];
  }

  return v6;
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICounterViewElement initWithDOMElement:parent:elementFactory:]";
}

@end