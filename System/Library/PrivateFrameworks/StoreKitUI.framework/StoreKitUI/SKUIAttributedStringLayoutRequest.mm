@interface SKUIAttributedStringLayoutRequest
- (SKUIAttributedStringLayoutRequest)initWithAttributedString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SKUIAttributedStringLayoutRequest

- (SKUIAttributedStringLayoutRequest)initWithAttributedString:(id)string
{
  stringCopy = string;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIAttributedStringLayoutRequest initWithAttributedString:];
  }

  v9.receiver = self;
  v9.super_class = SKUIAttributedStringLayoutRequest;
  v5 = [(SKUIAttributedStringLayoutRequest *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    attributedString = v5->_attributedString;
    v5->_attributedString = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithAttributedString:", self->_attributedString}];
  *(result + 2) = self->_numberOfLines;
  *(result + 24) = self->_wantsBaselineOffset;
  *(result + 4) = *&self->_width;
  return result;
}

- (void)initWithAttributedString:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAttributedStringLayoutRequest initWithAttributedString:]";
}

@end