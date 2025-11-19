@interface _VLLocalizerAltitudeQuery
- (_VLLocalizerAltitudeQuery)init;
- (_VLLocalizerAltitudeQuery)initWithLocation:(id)a3 callbackQueue:(id)a4 callback:(id)a5;
@end

@implementation _VLLocalizerAltitudeQuery

- (_VLLocalizerAltitudeQuery)init
{
  result = [MEMORY[0x277CBEAD8] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

- (_VLLocalizerAltitudeQuery)initWithLocation:(id)a3 callbackQueue:(id)a4 callback:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = _VLLocalizerAltitudeQuery;
  v12 = [(_VLLocalizerAltitudeQuery *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_location, a3);
    if (qword_281181CD8 != -1)
    {
      dispatch_once(&qword_281181CD8, &__block_literal_global_225);
    }

    v13->_signpostID = os_signpost_id_generate(qword_281181CD0);
    objc_storeStrong(&v13->_callbackQueue, a4);
    v14 = [v11 copy];
    callback = v13->_callback;
    v13->_callback = v14;

    v16 = v13;
  }

  return v13;
}

@end