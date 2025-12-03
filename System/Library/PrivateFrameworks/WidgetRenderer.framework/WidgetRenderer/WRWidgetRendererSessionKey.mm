@interface WRWidgetRendererSessionKey
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (WRWidgetRendererSessionKey)initWithBSXPCCoder:(id)coder;
- (WRWidgetRendererSessionKey)initWithCoder:(id)coder;
- (WRWidgetRendererSessionKey)initWithIdentifier:(id)identifier widget:(id)widget metrics:(id)metrics;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WRWidgetRendererSessionKey

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(CHSWidget *)self->_widget hash]+ v3;
  return v4 + [(CHSWidgetMetrics *)self->_metrics hash];
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  v4 = [(CHSWidget *)self->_widget _loggingIdentifierWithMetrics:self->_metrics];
  v5 = [v2 stringWithFormat:@"<%@-%@>", identifier, v4];

  return v5;
}

- (WRWidgetRendererSessionKey)initWithIdentifier:(id)identifier widget:(id)widget metrics:(id)metrics
{
  identifierCopy = identifier;
  widgetCopy = widget;
  metricsCopy = metrics;
  v15.receiver = self;
  v15.super_class = WRWidgetRendererSessionKey;
  v12 = [(WRWidgetRendererSessionKey *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_widget, widget);
    objc_storeStrong(&v13->_metrics, metrics);
    objc_storeStrong(&v13->_identifier, identifier);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      widget = self->_widget;
      widget = [(WRWidgetRendererSessionKey *)v5 widget];
      if ([(CHSWidget *)widget isEqual:widget])
      {
        metrics = self->_metrics;
        metrics = [(WRWidgetRendererSessionKey *)v5 metrics];
        if ([(CHSWidgetMetrics *)metrics isEqual:metrics])
        {
          identifier = self->_identifier;
          identifier = [(WRWidgetRendererSessionKey *)v5 identifier];
          v12 = [(NSString *)identifier isEqual:identifier];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_widget forKey:@"widget"];
  [coderCopy encodeObject:self->_metrics forKey:@"metrics"];
}

- (WRWidgetRendererSessionKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = WRWidgetRendererSessionKey;
  v5 = [(WRWidgetRendererSessionKey *)&v19 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widget"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metrics"];
  v9 = v8;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v8 == 0)
  {

LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  widget = v5->_widget;
  v5->_widget = v7;
  v13 = v7;

  metrics = v5->_metrics;
  v5->_metrics = v9;
  v15 = v9;

  identifier = v5->_identifier;
  v5->_identifier = v6;

  v17 = v5;
LABEL_12:

  return v17;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_widget forKey:@"widget"];
  [coderCopy encodeObject:self->_metrics forKey:@"metrics"];
}

- (WRWidgetRendererSessionKey)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WRWidgetRendererSessionKey;
  v5 = [(WRWidgetRendererSessionKey *)&v16 init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widget"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metrics"];
  v8 = [coderCopy decodeStringForKey:@"identifier"];
  if (!v8 || !v6 || !v7)
  {

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  identifier = v5->_identifier;
  v5->_identifier = v8;
  v10 = v8;

  widget = v5->_widget;
  v5->_widget = v6;
  v12 = v6;

  metrics = v5->_metrics;
  v5->_metrics = v7;

  v14 = v5;
LABEL_8:

  return v14;
}

@end