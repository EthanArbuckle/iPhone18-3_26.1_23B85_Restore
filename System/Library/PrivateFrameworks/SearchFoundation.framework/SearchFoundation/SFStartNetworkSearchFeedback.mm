@interface SFStartNetworkSearchFeedback
- (SFStartNetworkSearchFeedback)initWithCoder:(id)coder;
- (SFStartNetworkSearchFeedback)initWithInput:(id)input url:(id)url headers:(id)headers triggerEvent:(unint64_t)event endpoint:(unint64_t)endpoint;
- (SFStartNetworkSearchFeedback)initWithInput:(id)input url:(id)url headers:(id)headers triggerEvent:(unint64_t)event endpoint:(unint64_t)endpoint queryId:(unint64_t)id;
- (SFStartNetworkSearchFeedback)initWithInput:(id)input url:(id)url headers:(id)headers triggerEvent:(unint64_t)event endpoint:(unint64_t)endpoint queryId:(unint64_t)id experimentId:(id)experimentId treatmentId:(id)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFStartNetworkSearchFeedback

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFStartNetworkSearchFeedback;
  coderCopy = coder;
  [(SFStartSearchFeedback *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_url forKey:{@"url", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_headers forKey:@"headers"];
  [coderCopy encodeInteger:self->_endpoint forKey:@"endpoint"];
  [coderCopy encodeObject:self->_indexState forKey:@"_indexState"];
}

- (SFStartNetworkSearchFeedback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SFStartNetworkSearchFeedback;
  v5 = [(SFStartSearchFeedback *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"headers"];
    headers = v5->_headers;
    v5->_headers = v12;

    v5->_endpoint = [coderCopy decodeIntegerForKey:@"endpoint"];
    v14 = [coderCopy decodeObjectForKey:@"_indexState"];
    indexState = v5->_indexState;
    v5->_indexState = v14;
  }

  return v5;
}

- (SFStartNetworkSearchFeedback)initWithInput:(id)input url:(id)url headers:(id)headers triggerEvent:(unint64_t)event endpoint:(unint64_t)endpoint queryId:(unint64_t)id experimentId:(id)experimentId treatmentId:(id)self0
{
  experimentIdCopy = experimentId;
  treatmentIdCopy = treatmentId;
  v19 = [(SFStartNetworkSearchFeedback *)self initWithInput:input url:url headers:headers triggerEvent:event endpoint:endpoint queryId:id];
  v20 = v19;
  if (v19)
  {
    [(SFStartNetworkSearchFeedback *)v19 setExperimentId:experimentIdCopy];
    [(SFStartNetworkSearchFeedback *)v20 setTreatmentId:treatmentIdCopy];
    v21 = v20;
  }

  return v20;
}

- (SFStartNetworkSearchFeedback)initWithInput:(id)input url:(id)url headers:(id)headers triggerEvent:(unint64_t)event endpoint:(unint64_t)endpoint queryId:(unint64_t)id
{
  v9 = [(SFStartNetworkSearchFeedback *)self initWithInput:input url:url headers:headers triggerEvent:event endpoint:endpoint];
  v10 = v9;
  if (v9)
  {
    [(SFFeedback *)v9 setQueryId:id];
  }

  return v10;
}

- (SFStartNetworkSearchFeedback)initWithInput:(id)input url:(id)url headers:(id)headers triggerEvent:(unint64_t)event endpoint:(unint64_t)endpoint
{
  urlCopy = url;
  headersCopy = headers;
  v20.receiver = self;
  v20.super_class = SFStartNetworkSearchFeedback;
  v14 = [(SFStartSearchFeedback *)&v20 initWithInput:input triggerEvent:event];
  if (v14)
  {
    v15 = [urlCopy copy];
    url = v14->_url;
    v14->_url = v15;

    v17 = [headersCopy copy];
    headers = v14->_headers;
    v14->_headers = v17;

    v14->_endpoint = endpoint;
  }

  return v14;
}

@end