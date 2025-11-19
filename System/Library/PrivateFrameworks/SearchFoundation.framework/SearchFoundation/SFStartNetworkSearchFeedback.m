@interface SFStartNetworkSearchFeedback
- (SFStartNetworkSearchFeedback)initWithCoder:(id)a3;
- (SFStartNetworkSearchFeedback)initWithInput:(id)a3 url:(id)a4 headers:(id)a5 triggerEvent:(unint64_t)a6 endpoint:(unint64_t)a7;
- (SFStartNetworkSearchFeedback)initWithInput:(id)a3 url:(id)a4 headers:(id)a5 triggerEvent:(unint64_t)a6 endpoint:(unint64_t)a7 queryId:(unint64_t)a8;
- (SFStartNetworkSearchFeedback)initWithInput:(id)a3 url:(id)a4 headers:(id)a5 triggerEvent:(unint64_t)a6 endpoint:(unint64_t)a7 queryId:(unint64_t)a8 experimentId:(id)a9 treatmentId:(id)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFStartNetworkSearchFeedback

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFStartNetworkSearchFeedback;
  v4 = a3;
  [(SFStartSearchFeedback *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_url forKey:{@"url", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_headers forKey:@"headers"];
  [v4 encodeInteger:self->_endpoint forKey:@"endpoint"];
  [v4 encodeObject:self->_indexState forKey:@"_indexState"];
}

- (SFStartNetworkSearchFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SFStartNetworkSearchFeedback;
  v5 = [(SFStartSearchFeedback *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"headers"];
    headers = v5->_headers;
    v5->_headers = v12;

    v5->_endpoint = [v4 decodeIntegerForKey:@"endpoint"];
    v14 = [v4 decodeObjectForKey:@"_indexState"];
    indexState = v5->_indexState;
    v5->_indexState = v14;
  }

  return v5;
}

- (SFStartNetworkSearchFeedback)initWithInput:(id)a3 url:(id)a4 headers:(id)a5 triggerEvent:(unint64_t)a6 endpoint:(unint64_t)a7 queryId:(unint64_t)a8 experimentId:(id)a9 treatmentId:(id)a10
{
  v17 = a9;
  v18 = a10;
  v19 = [(SFStartNetworkSearchFeedback *)self initWithInput:a3 url:a4 headers:a5 triggerEvent:a6 endpoint:a7 queryId:a8];
  v20 = v19;
  if (v19)
  {
    [(SFStartNetworkSearchFeedback *)v19 setExperimentId:v17];
    [(SFStartNetworkSearchFeedback *)v20 setTreatmentId:v18];
    v21 = v20;
  }

  return v20;
}

- (SFStartNetworkSearchFeedback)initWithInput:(id)a3 url:(id)a4 headers:(id)a5 triggerEvent:(unint64_t)a6 endpoint:(unint64_t)a7 queryId:(unint64_t)a8
{
  v9 = [(SFStartNetworkSearchFeedback *)self initWithInput:a3 url:a4 headers:a5 triggerEvent:a6 endpoint:a7];
  v10 = v9;
  if (v9)
  {
    [(SFFeedback *)v9 setQueryId:a8];
  }

  return v10;
}

- (SFStartNetworkSearchFeedback)initWithInput:(id)a3 url:(id)a4 headers:(id)a5 triggerEvent:(unint64_t)a6 endpoint:(unint64_t)a7
{
  v12 = a4;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = SFStartNetworkSearchFeedback;
  v14 = [(SFStartSearchFeedback *)&v20 initWithInput:a3 triggerEvent:a6];
  if (v14)
  {
    v15 = [v12 copy];
    url = v14->_url;
    v14->_url = v15;

    v17 = [v13 copy];
    headers = v14->_headers;
    v14->_headers = v17;

    v14->_endpoint = a7;
  }

  return v14;
}

@end