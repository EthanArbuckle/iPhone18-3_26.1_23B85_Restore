@interface _SFPBFlightLeg
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBFlightLeg)initWithDictionary:(id)dictionary;
- (_SFPBFlightLeg)initWithFacade:(id)facade;
- (_SFPBFlightLeg)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setArrivalGate:(id)gate;
- (void)setArrivalTerminal:(id)terminal;
- (void)setBaggageClaim:(id)claim;
- (void)setDepartureGate:(id)gate;
- (void)setDepartureTerminal:(id)terminal;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBFlightLeg

- (_SFPBFlightLeg)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBFlightLeg *)self init];
  if (v5)
  {
    if ([facadeCopy hasStatus])
    {
      -[_SFPBFlightLeg setStatus:](v5, "setStatus:", [facadeCopy status]);
    }

    departurePublishedTime = [facadeCopy departurePublishedTime];

    if (departurePublishedTime)
    {
      v7 = [_SFPBDate alloc];
      departurePublishedTime2 = [facadeCopy departurePublishedTime];
      v9 = [(_SFPBDate *)v7 initWithNSDate:departurePublishedTime2];
      [(_SFPBFlightLeg *)v5 setDeparturePublishedTime:v9];
    }

    departureActualTime = [facadeCopy departureActualTime];

    if (departureActualTime)
    {
      v11 = [_SFPBDate alloc];
      departureActualTime2 = [facadeCopy departureActualTime];
      v13 = [(_SFPBDate *)v11 initWithNSDate:departureActualTime2];
      [(_SFPBFlightLeg *)v5 setDepartureActualTime:v13];
    }

    departureTerminal = [facadeCopy departureTerminal];

    if (departureTerminal)
    {
      departureTerminal2 = [facadeCopy departureTerminal];
      [(_SFPBFlightLeg *)v5 setDepartureTerminal:departureTerminal2];
    }

    departureGate = [facadeCopy departureGate];

    if (departureGate)
    {
      departureGate2 = [facadeCopy departureGate];
      [(_SFPBFlightLeg *)v5 setDepartureGate:departureGate2];
    }

    departureAirport = [facadeCopy departureAirport];

    if (departureAirport)
    {
      v19 = [_SFPBAirport alloc];
      departureAirport2 = [facadeCopy departureAirport];
      v21 = [(_SFPBAirport *)v19 initWithFacade:departureAirport2];
      [(_SFPBFlightLeg *)v5 setDepartureAirport:v21];
    }

    arrivalPublishedTime = [facadeCopy arrivalPublishedTime];

    if (arrivalPublishedTime)
    {
      v23 = [_SFPBDate alloc];
      arrivalPublishedTime2 = [facadeCopy arrivalPublishedTime];
      v25 = [(_SFPBDate *)v23 initWithNSDate:arrivalPublishedTime2];
      [(_SFPBFlightLeg *)v5 setArrivalPublishedTime:v25];
    }

    arrivalActualTime = [facadeCopy arrivalActualTime];

    if (arrivalActualTime)
    {
      v27 = [_SFPBDate alloc];
      arrivalActualTime2 = [facadeCopy arrivalActualTime];
      v29 = [(_SFPBDate *)v27 initWithNSDate:arrivalActualTime2];
      [(_SFPBFlightLeg *)v5 setArrivalActualTime:v29];
    }

    arrivalTerminal = [facadeCopy arrivalTerminal];

    if (arrivalTerminal)
    {
      arrivalTerminal2 = [facadeCopy arrivalTerminal];
      [(_SFPBFlightLeg *)v5 setArrivalTerminal:arrivalTerminal2];
    }

    arrivalGate = [facadeCopy arrivalGate];

    if (arrivalGate)
    {
      arrivalGate2 = [facadeCopy arrivalGate];
      [(_SFPBFlightLeg *)v5 setArrivalGate:arrivalGate2];
    }

    arrivalAirport = [facadeCopy arrivalAirport];

    if (arrivalAirport)
    {
      v35 = [_SFPBAirport alloc];
      arrivalAirport2 = [facadeCopy arrivalAirport];
      v37 = [(_SFPBAirport *)v35 initWithFacade:arrivalAirport2];
      [(_SFPBFlightLeg *)v5 setArrivalAirport:v37];
    }

    divertedAirport = [facadeCopy divertedAirport];

    if (divertedAirport)
    {
      v39 = [_SFPBAirport alloc];
      divertedAirport2 = [facadeCopy divertedAirport];
      v41 = [(_SFPBAirport *)v39 initWithFacade:divertedAirport2];
      [(_SFPBFlightLeg *)v5 setDivertedAirport:v41];
    }

    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBFlightLeg *)v5 setTitle:title2];
    }

    baggageClaim = [facadeCopy baggageClaim];

    if (baggageClaim)
    {
      baggageClaim2 = [facadeCopy baggageClaim];
      [(_SFPBFlightLeg *)v5 setBaggageClaim:baggageClaim2];
    }

    departureGateClosedTime = [facadeCopy departureGateClosedTime];

    if (departureGateClosedTime)
    {
      v47 = [_SFPBDate alloc];
      departureGateClosedTime2 = [facadeCopy departureGateClosedTime];
      v49 = [(_SFPBDate *)v47 initWithNSDate:departureGateClosedTime2];
      [(_SFPBFlightLeg *)v5 setDepartureGateClosedTime:v49];
    }

    departureRunwayTime = [facadeCopy departureRunwayTime];

    if (departureRunwayTime)
    {
      v51 = [_SFPBDate alloc];
      departureRunwayTime2 = [facadeCopy departureRunwayTime];
      v53 = [(_SFPBDate *)v51 initWithNSDate:departureRunwayTime2];
      [(_SFPBFlightLeg *)v5 setDepartureRunwayTime:v53];
    }

    arrivalRunwayTime = [facadeCopy arrivalRunwayTime];

    if (arrivalRunwayTime)
    {
      v55 = [_SFPBDate alloc];
      arrivalRunwayTime2 = [facadeCopy arrivalRunwayTime];
      v57 = [(_SFPBDate *)v55 initWithNSDate:arrivalRunwayTime2];
      [(_SFPBFlightLeg *)v5 setArrivalRunwayTime:v57];
    }

    arrivalGateTime = [facadeCopy arrivalGateTime];

    if (arrivalGateTime)
    {
      v59 = [_SFPBDate alloc];
      arrivalGateTime2 = [facadeCopy arrivalGateTime];
      v61 = [(_SFPBDate *)v59 initWithNSDate:arrivalGateTime2];
      [(_SFPBFlightLeg *)v5 setArrivalGateTime:v61];
    }

    lastUpdatedTime = [facadeCopy lastUpdatedTime];

    if (lastUpdatedTime)
    {
      v63 = [_SFPBDate alloc];
      lastUpdatedTime2 = [facadeCopy lastUpdatedTime];
      v65 = [(_SFPBDate *)v63 initWithNSDate:lastUpdatedTime2];
      [(_SFPBFlightLeg *)v5 setLastUpdatedTime:v65];
    }

    pegasusDisplayFields = [facadeCopy pegasusDisplayFields];

    if (pegasusDisplayFields)
    {
      v67 = [_SFPBPegasusDisplayFields alloc];
      pegasusDisplayFields2 = [facadeCopy pegasusDisplayFields];
      v69 = [(_SFPBPegasusDisplayFields *)v67 initWithFacade:pegasusDisplayFields2];
      [(_SFPBFlightLeg *)v5 setPegasusDisplayFields:v69];
    }

    if ([facadeCopy hasPegasusDefinedState])
    {
      -[_SFPBFlightLeg setPegasusDefinedState:](v5, "setPegasusDefinedState:", [facadeCopy pegasusDefinedState]);
    }

    gateArrivalTimes = [facadeCopy gateArrivalTimes];

    if (gateArrivalTimes)
    {
      v71 = [_SFPBFlightDateDescriptor alloc];
      gateArrivalTimes2 = [facadeCopy gateArrivalTimes];
      v73 = [(_SFPBFlightDateDescriptor *)v71 initWithFacade:gateArrivalTimes2];
      [(_SFPBFlightLeg *)v5 setGateArrivalTimes:v73];
    }

    runwayArrivalTimes = [facadeCopy runwayArrivalTimes];

    if (runwayArrivalTimes)
    {
      v75 = [_SFPBFlightDateDescriptor alloc];
      runwayArrivalTimes2 = [facadeCopy runwayArrivalTimes];
      v77 = [(_SFPBFlightDateDescriptor *)v75 initWithFacade:runwayArrivalTimes2];
      [(_SFPBFlightLeg *)v5 setRunwayArrivalTimes:v77];
    }

    gateDepartureTimes = [facadeCopy gateDepartureTimes];

    if (gateDepartureTimes)
    {
      v79 = [_SFPBFlightDateDescriptor alloc];
      gateDepartureTimes2 = [facadeCopy gateDepartureTimes];
      v81 = [(_SFPBFlightDateDescriptor *)v79 initWithFacade:gateDepartureTimes2];
      [(_SFPBFlightLeg *)v5 setGateDepartureTimes:v81];
    }

    runwayDepartureTimes = [facadeCopy runwayDepartureTimes];

    if (runwayDepartureTimes)
    {
      v83 = [_SFPBFlightDateDescriptor alloc];
      runwayDepartureTimes2 = [facadeCopy runwayDepartureTimes];
      v85 = [(_SFPBFlightDateDescriptor *)v83 initWithFacade:runwayDepartureTimes2];
      [(_SFPBFlightLeg *)v5 setRunwayDepartureTimes:v85];
    }

    v86 = v5;
  }

  return v5;
}

- (_SFPBFlightLeg)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v74.receiver = self;
  v74.super_class = _SFPBFlightLeg;
  v5 = [(_SFPBFlightLeg *)&v74 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFlightLeg setStatus:](v5, "setStatus:", [v6 intValue]);
    }

    v64 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"departurePublishedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBDate alloc] initWithDictionary:v7];
      [(_SFPBFlightLeg *)v5 setDeparturePublishedTime:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"departureActualTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[_SFPBDate alloc] initWithDictionary:v9];
      [(_SFPBFlightLeg *)v5 setDepartureActualTime:v10];
    }

    v62 = v9;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"departureTerminal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(_SFPBFlightLeg *)v5 setDepartureTerminal:v12];
    }

    v61 = v11;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"departureGate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(_SFPBFlightLeg *)v5 setDepartureGate:v14];
    }

    v60 = v13;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"departureAirport"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBAirport alloc] initWithDictionary:v15];
      [(_SFPBFlightLeg *)v5 setDepartureAirport:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"arrivalPublishedTime"];
    objc_opt_class();
    v73 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBDate alloc] initWithDictionary:v17];
      [(_SFPBFlightLeg *)v5 setArrivalPublishedTime:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"arrivalActualTime"];
    objc_opt_class();
    v72 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBDate alloc] initWithDictionary:v19];
      [(_SFPBFlightLeg *)v5 setArrivalActualTime:v20];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"arrivalTerminal"];
    objc_opt_class();
    v71 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBFlightLeg *)v5 setArrivalTerminal:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"arrivalGate"];
    objc_opt_class();
    v70 = v23;
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      [(_SFPBFlightLeg *)v5 setArrivalGate:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"arrivalAirport"];
    objc_opt_class();
    v69 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBAirport alloc] initWithDictionary:v25];
      [(_SFPBFlightLeg *)v5 setArrivalAirport:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"divertedAirport"];
    objc_opt_class();
    v68 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [[_SFPBAirport alloc] initWithDictionary:v27];
      [(_SFPBFlightLeg *)v5 setDivertedAirport:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 copy];
      [(_SFPBFlightLeg *)v5 setTitle:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"baggageClaim"];
    objc_opt_class();
    v67 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = [v31 copy];
      [(_SFPBFlightLeg *)v5 setBaggageClaim:v32];
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"departureGateClosedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBDate alloc] initWithDictionary:v33];
      [(_SFPBFlightLeg *)v5 setDepartureGateClosedTime:v34];
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"departureRunwayTime"];
    objc_opt_class();
    v66 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = [[_SFPBDate alloc] initWithDictionary:v35];
      [(_SFPBFlightLeg *)v5 setDepartureRunwayTime:v36];
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"arrivalRunwayTime"];
    objc_opt_class();
    v65 = v37;
    if (objc_opt_isKindOfClass())
    {
      v38 = [[_SFPBDate alloc] initWithDictionary:v37];
      [(_SFPBFlightLeg *)v5 setArrivalRunwayTime:v38];
    }

    v57 = v33;
    v39 = [dictionaryCopy objectForKeyedSubscript:@"arrivalGateTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[_SFPBDate alloc] initWithDictionary:v39];
      [(_SFPBFlightLeg *)v5 setArrivalGateTime:v40];
    }

    v56 = v39;
    v41 = [dictionaryCopy objectForKeyedSubscript:@"lastUpdatedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [[_SFPBDate alloc] initWithDictionary:v41];
      [(_SFPBFlightLeg *)v5 setLastUpdatedTime:v42];
    }

    v58 = v29;
    v43 = [dictionaryCopy objectForKeyedSubscript:@"pegasusDisplayFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [[_SFPBPegasusDisplayFields alloc] initWithDictionary:v43];
      [(_SFPBFlightLeg *)v5 setPegasusDisplayFields:v44];
    }

    v63 = v7;
    v45 = [dictionaryCopy objectForKeyedSubscript:@"pegasusDefinedState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFlightLeg setPegasusDefinedState:](v5, "setPegasusDefinedState:", [v45 intValue]);
    }

    v59 = v15;
    v46 = [dictionaryCopy objectForKeyedSubscript:@"gateArrivalTimes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBFlightDateDescriptor alloc] initWithDictionary:v46];
      [(_SFPBFlightLeg *)v5 setGateArrivalTimes:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"runwayArrivalTimes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBFlightDateDescriptor alloc] initWithDictionary:v48];
      [(_SFPBFlightLeg *)v5 setRunwayArrivalTimes:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"gateDepartureTimes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBFlightDateDescriptor alloc] initWithDictionary:v50];
      [(_SFPBFlightLeg *)v5 setGateDepartureTimes:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"runwayDepartureTimes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBFlightDateDescriptor alloc] initWithDictionary:v52];
      [(_SFPBFlightLeg *)v5 setRunwayDepartureTimes:v53];
    }

    v54 = v5;
  }

  return v5;
}

- (_SFPBFlightLeg)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBFlightLeg *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBFlightLeg *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_arrivalActualTime)
  {
    arrivalActualTime = [(_SFPBFlightLeg *)self arrivalActualTime];
    dictionaryRepresentation = [arrivalActualTime dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"arrivalActualTime"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"arrivalActualTime"];
    }
  }

  if (self->_arrivalAirport)
  {
    arrivalAirport = [(_SFPBFlightLeg *)self arrivalAirport];
    dictionaryRepresentation2 = [arrivalAirport dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"arrivalAirport"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"arrivalAirport"];
    }
  }

  if (self->_arrivalGate)
  {
    arrivalGate = [(_SFPBFlightLeg *)self arrivalGate];
    v11 = [arrivalGate copy];
    [dictionary setObject:v11 forKeyedSubscript:@"arrivalGate"];
  }

  if (self->_arrivalGateTime)
  {
    arrivalGateTime = [(_SFPBFlightLeg *)self arrivalGateTime];
    dictionaryRepresentation3 = [arrivalGateTime dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"arrivalGateTime"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"arrivalGateTime"];
    }
  }

  if (self->_arrivalPublishedTime)
  {
    arrivalPublishedTime = [(_SFPBFlightLeg *)self arrivalPublishedTime];
    dictionaryRepresentation4 = [arrivalPublishedTime dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"arrivalPublishedTime"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"arrivalPublishedTime"];
    }
  }

  if (self->_arrivalRunwayTime)
  {
    arrivalRunwayTime = [(_SFPBFlightLeg *)self arrivalRunwayTime];
    dictionaryRepresentation5 = [arrivalRunwayTime dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"arrivalRunwayTime"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"arrivalRunwayTime"];
    }
  }

  if (self->_arrivalTerminal)
  {
    arrivalTerminal = [(_SFPBFlightLeg *)self arrivalTerminal];
    v22 = [arrivalTerminal copy];
    [dictionary setObject:v22 forKeyedSubscript:@"arrivalTerminal"];
  }

  if (self->_baggageClaim)
  {
    baggageClaim = [(_SFPBFlightLeg *)self baggageClaim];
    v24 = [baggageClaim copy];
    [dictionary setObject:v24 forKeyedSubscript:@"baggageClaim"];
  }

  if (self->_departureActualTime)
  {
    departureActualTime = [(_SFPBFlightLeg *)self departureActualTime];
    dictionaryRepresentation6 = [departureActualTime dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"departureActualTime"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"departureActualTime"];
    }
  }

  if (self->_departureAirport)
  {
    departureAirport = [(_SFPBFlightLeg *)self departureAirport];
    dictionaryRepresentation7 = [departureAirport dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"departureAirport"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"departureAirport"];
    }
  }

  if (self->_departureGate)
  {
    departureGate = [(_SFPBFlightLeg *)self departureGate];
    v32 = [departureGate copy];
    [dictionary setObject:v32 forKeyedSubscript:@"departureGate"];
  }

  if (self->_departureGateClosedTime)
  {
    departureGateClosedTime = [(_SFPBFlightLeg *)self departureGateClosedTime];
    dictionaryRepresentation8 = [departureGateClosedTime dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"departureGateClosedTime"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"departureGateClosedTime"];
    }
  }

  if (self->_departurePublishedTime)
  {
    departurePublishedTime = [(_SFPBFlightLeg *)self departurePublishedTime];
    dictionaryRepresentation9 = [departurePublishedTime dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"departurePublishedTime"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"departurePublishedTime"];
    }
  }

  if (self->_departureRunwayTime)
  {
    departureRunwayTime = [(_SFPBFlightLeg *)self departureRunwayTime];
    dictionaryRepresentation10 = [departureRunwayTime dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"departureRunwayTime"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"departureRunwayTime"];
    }
  }

  if (self->_departureTerminal)
  {
    departureTerminal = [(_SFPBFlightLeg *)self departureTerminal];
    v43 = [departureTerminal copy];
    [dictionary setObject:v43 forKeyedSubscript:@"departureTerminal"];
  }

  if (self->_divertedAirport)
  {
    divertedAirport = [(_SFPBFlightLeg *)self divertedAirport];
    dictionaryRepresentation11 = [divertedAirport dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"divertedAirport"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"divertedAirport"];
    }
  }

  if (self->_gateArrivalTimes)
  {
    gateArrivalTimes = [(_SFPBFlightLeg *)self gateArrivalTimes];
    dictionaryRepresentation12 = [gateArrivalTimes dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"gateArrivalTimes"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"gateArrivalTimes"];
    }
  }

  if (self->_gateDepartureTimes)
  {
    gateDepartureTimes = [(_SFPBFlightLeg *)self gateDepartureTimes];
    dictionaryRepresentation13 = [gateDepartureTimes dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"gateDepartureTimes"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"gateDepartureTimes"];
    }
  }

  if (self->_lastUpdatedTime)
  {
    lastUpdatedTime = [(_SFPBFlightLeg *)self lastUpdatedTime];
    dictionaryRepresentation14 = [lastUpdatedTime dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"lastUpdatedTime"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"lastUpdatedTime"];
    }
  }

  if (self->_pegasusDefinedState)
  {
    pegasusDefinedState = [(_SFPBFlightLeg *)self pegasusDefinedState];
    if (pegasusDefinedState >= 0xA)
    {
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", pegasusDefinedState];
    }

    else
    {
      v57 = off_1E7ACE220[pegasusDefinedState];
    }

    [dictionary setObject:v57 forKeyedSubscript:@"pegasusDefinedState"];
  }

  if (self->_pegasusDisplayFields)
  {
    pegasusDisplayFields = [(_SFPBFlightLeg *)self pegasusDisplayFields];
    dictionaryRepresentation15 = [pegasusDisplayFields dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"pegasusDisplayFields"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"pegasusDisplayFields"];
    }
  }

  if (self->_runwayArrivalTimes)
  {
    runwayArrivalTimes = [(_SFPBFlightLeg *)self runwayArrivalTimes];
    dictionaryRepresentation16 = [runwayArrivalTimes dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"runwayArrivalTimes"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"runwayArrivalTimes"];
    }
  }

  if (self->_runwayDepartureTimes)
  {
    runwayDepartureTimes = [(_SFPBFlightLeg *)self runwayDepartureTimes];
    dictionaryRepresentation17 = [runwayDepartureTimes dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"runwayDepartureTimes"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"runwayDepartureTimes"];
    }
  }

  if (self->_status)
  {
    status = [(_SFPBFlightLeg *)self status];
    if (status >= 0xA)
    {
      v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", status];
    }

    else
    {
      v68 = off_1E7ACE220[status];
    }

    [dictionary setObject:v68 forKeyedSubscript:@"status"];
  }

  if (self->_title)
  {
    title = [(_SFPBFlightLeg *)self title];
    v70 = [title copy];
    [dictionary setObject:v70 forKeyedSubscript:@"title"];
  }

  v71 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v26 = 2654435761 * self->_status;
  v25 = [(_SFPBDate *)self->_departurePublishedTime hash];
  v24 = [(_SFPBDate *)self->_departureActualTime hash];
  v23 = [(NSString *)self->_departureTerminal hash];
  v22 = [(NSString *)self->_departureGate hash];
  v21 = [(_SFPBAirport *)self->_departureAirport hash];
  v20 = [(_SFPBDate *)self->_arrivalPublishedTime hash];
  v19 = [(_SFPBDate *)self->_arrivalActualTime hash];
  v18 = [(NSString *)self->_arrivalTerminal hash];
  v17 = [(NSString *)self->_arrivalGate hash];
  v3 = [(_SFPBAirport *)self->_arrivalAirport hash];
  v4 = [(_SFPBAirport *)self->_divertedAirport hash];
  v5 = [(NSString *)self->_title hash];
  v6 = [(NSString *)self->_baggageClaim hash];
  v7 = [(_SFPBDate *)self->_departureGateClosedTime hash];
  v8 = [(_SFPBDate *)self->_departureRunwayTime hash];
  v9 = [(_SFPBDate *)self->_arrivalRunwayTime hash];
  v10 = [(_SFPBDate *)self->_arrivalGateTime hash];
  v11 = v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v26 ^ v20 ^ v19 ^ v18 ^ v17 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(_SFPBDate *)self->_lastUpdatedTime hash];
  v12 = [(_SFPBPegasusDisplayFields *)self->_pegasusDisplayFields hash]^ (2654435761 * self->_pegasusDefinedState);
  v13 = v12 ^ [(_SFPBFlightDateDescriptor *)self->_gateArrivalTimes hash];
  v14 = v11 ^ v13 ^ [(_SFPBFlightDateDescriptor *)self->_runwayArrivalTimes hash];
  v15 = [(_SFPBFlightDateDescriptor *)self->_gateDepartureTimes hash];
  return v14 ^ v15 ^ [(_SFPBFlightDateDescriptor *)self->_runwayDepartureTimes hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_119;
  }

  status = self->_status;
  if (status != [equalCopy status])
  {
    goto LABEL_119;
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self departurePublishedTime];
  departurePublishedTime2 = [equalCopy departurePublishedTime];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  departurePublishedTime3 = [(_SFPBFlightLeg *)self departurePublishedTime];
  if (departurePublishedTime3)
  {
    v9 = departurePublishedTime3;
    departurePublishedTime4 = [(_SFPBFlightLeg *)self departurePublishedTime];
    departurePublishedTime5 = [equalCopy departurePublishedTime];
    v12 = [departurePublishedTime4 isEqual:departurePublishedTime5];

    if (!v12)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self departureActualTime];
  departurePublishedTime2 = [equalCopy departureActualTime];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  departureActualTime = [(_SFPBFlightLeg *)self departureActualTime];
  if (departureActualTime)
  {
    v14 = departureActualTime;
    departureActualTime2 = [(_SFPBFlightLeg *)self departureActualTime];
    departureActualTime3 = [equalCopy departureActualTime];
    v17 = [departureActualTime2 isEqual:departureActualTime3];

    if (!v17)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self departureTerminal];
  departurePublishedTime2 = [equalCopy departureTerminal];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  departureTerminal = [(_SFPBFlightLeg *)self departureTerminal];
  if (departureTerminal)
  {
    v19 = departureTerminal;
    departureTerminal2 = [(_SFPBFlightLeg *)self departureTerminal];
    departureTerminal3 = [equalCopy departureTerminal];
    v22 = [departureTerminal2 isEqual:departureTerminal3];

    if (!v22)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self departureGate];
  departurePublishedTime2 = [equalCopy departureGate];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  departureGate = [(_SFPBFlightLeg *)self departureGate];
  if (departureGate)
  {
    v24 = departureGate;
    departureGate2 = [(_SFPBFlightLeg *)self departureGate];
    departureGate3 = [equalCopy departureGate];
    v27 = [departureGate2 isEqual:departureGate3];

    if (!v27)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self departureAirport];
  departurePublishedTime2 = [equalCopy departureAirport];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  departureAirport = [(_SFPBFlightLeg *)self departureAirport];
  if (departureAirport)
  {
    v29 = departureAirport;
    departureAirport2 = [(_SFPBFlightLeg *)self departureAirport];
    departureAirport3 = [equalCopy departureAirport];
    v32 = [departureAirport2 isEqual:departureAirport3];

    if (!v32)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self arrivalPublishedTime];
  departurePublishedTime2 = [equalCopy arrivalPublishedTime];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  arrivalPublishedTime = [(_SFPBFlightLeg *)self arrivalPublishedTime];
  if (arrivalPublishedTime)
  {
    v34 = arrivalPublishedTime;
    arrivalPublishedTime2 = [(_SFPBFlightLeg *)self arrivalPublishedTime];
    arrivalPublishedTime3 = [equalCopy arrivalPublishedTime];
    v37 = [arrivalPublishedTime2 isEqual:arrivalPublishedTime3];

    if (!v37)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self arrivalActualTime];
  departurePublishedTime2 = [equalCopy arrivalActualTime];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  arrivalActualTime = [(_SFPBFlightLeg *)self arrivalActualTime];
  if (arrivalActualTime)
  {
    v39 = arrivalActualTime;
    arrivalActualTime2 = [(_SFPBFlightLeg *)self arrivalActualTime];
    arrivalActualTime3 = [equalCopy arrivalActualTime];
    v42 = [arrivalActualTime2 isEqual:arrivalActualTime3];

    if (!v42)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self arrivalTerminal];
  departurePublishedTime2 = [equalCopy arrivalTerminal];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  arrivalTerminal = [(_SFPBFlightLeg *)self arrivalTerminal];
  if (arrivalTerminal)
  {
    v44 = arrivalTerminal;
    arrivalTerminal2 = [(_SFPBFlightLeg *)self arrivalTerminal];
    arrivalTerminal3 = [equalCopy arrivalTerminal];
    v47 = [arrivalTerminal2 isEqual:arrivalTerminal3];

    if (!v47)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self arrivalGate];
  departurePublishedTime2 = [equalCopy arrivalGate];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  arrivalGate = [(_SFPBFlightLeg *)self arrivalGate];
  if (arrivalGate)
  {
    v49 = arrivalGate;
    arrivalGate2 = [(_SFPBFlightLeg *)self arrivalGate];
    arrivalGate3 = [equalCopy arrivalGate];
    v52 = [arrivalGate2 isEqual:arrivalGate3];

    if (!v52)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self arrivalAirport];
  departurePublishedTime2 = [equalCopy arrivalAirport];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  arrivalAirport = [(_SFPBFlightLeg *)self arrivalAirport];
  if (arrivalAirport)
  {
    v54 = arrivalAirport;
    arrivalAirport2 = [(_SFPBFlightLeg *)self arrivalAirport];
    arrivalAirport3 = [equalCopy arrivalAirport];
    v57 = [arrivalAirport2 isEqual:arrivalAirport3];

    if (!v57)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self divertedAirport];
  departurePublishedTime2 = [equalCopy divertedAirport];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  divertedAirport = [(_SFPBFlightLeg *)self divertedAirport];
  if (divertedAirport)
  {
    v59 = divertedAirport;
    divertedAirport2 = [(_SFPBFlightLeg *)self divertedAirport];
    divertedAirport3 = [equalCopy divertedAirport];
    v62 = [divertedAirport2 isEqual:divertedAirport3];

    if (!v62)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self title];
  departurePublishedTime2 = [equalCopy title];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  title = [(_SFPBFlightLeg *)self title];
  if (title)
  {
    v64 = title;
    title2 = [(_SFPBFlightLeg *)self title];
    title3 = [equalCopy title];
    v67 = [title2 isEqual:title3];

    if (!v67)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self baggageClaim];
  departurePublishedTime2 = [equalCopy baggageClaim];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  baggageClaim = [(_SFPBFlightLeg *)self baggageClaim];
  if (baggageClaim)
  {
    v69 = baggageClaim;
    baggageClaim2 = [(_SFPBFlightLeg *)self baggageClaim];
    baggageClaim3 = [equalCopy baggageClaim];
    v72 = [baggageClaim2 isEqual:baggageClaim3];

    if (!v72)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self departureGateClosedTime];
  departurePublishedTime2 = [equalCopy departureGateClosedTime];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  departureGateClosedTime = [(_SFPBFlightLeg *)self departureGateClosedTime];
  if (departureGateClosedTime)
  {
    v74 = departureGateClosedTime;
    departureGateClosedTime2 = [(_SFPBFlightLeg *)self departureGateClosedTime];
    departureGateClosedTime3 = [equalCopy departureGateClosedTime];
    v77 = [departureGateClosedTime2 isEqual:departureGateClosedTime3];

    if (!v77)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self departureRunwayTime];
  departurePublishedTime2 = [equalCopy departureRunwayTime];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  departureRunwayTime = [(_SFPBFlightLeg *)self departureRunwayTime];
  if (departureRunwayTime)
  {
    v79 = departureRunwayTime;
    departureRunwayTime2 = [(_SFPBFlightLeg *)self departureRunwayTime];
    departureRunwayTime3 = [equalCopy departureRunwayTime];
    v82 = [departureRunwayTime2 isEqual:departureRunwayTime3];

    if (!v82)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self arrivalRunwayTime];
  departurePublishedTime2 = [equalCopy arrivalRunwayTime];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  arrivalRunwayTime = [(_SFPBFlightLeg *)self arrivalRunwayTime];
  if (arrivalRunwayTime)
  {
    v84 = arrivalRunwayTime;
    arrivalRunwayTime2 = [(_SFPBFlightLeg *)self arrivalRunwayTime];
    arrivalRunwayTime3 = [equalCopy arrivalRunwayTime];
    v87 = [arrivalRunwayTime2 isEqual:arrivalRunwayTime3];

    if (!v87)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self arrivalGateTime];
  departurePublishedTime2 = [equalCopy arrivalGateTime];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  arrivalGateTime = [(_SFPBFlightLeg *)self arrivalGateTime];
  if (arrivalGateTime)
  {
    v89 = arrivalGateTime;
    arrivalGateTime2 = [(_SFPBFlightLeg *)self arrivalGateTime];
    arrivalGateTime3 = [equalCopy arrivalGateTime];
    v92 = [arrivalGateTime2 isEqual:arrivalGateTime3];

    if (!v92)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self lastUpdatedTime];
  departurePublishedTime2 = [equalCopy lastUpdatedTime];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  lastUpdatedTime = [(_SFPBFlightLeg *)self lastUpdatedTime];
  if (lastUpdatedTime)
  {
    v94 = lastUpdatedTime;
    lastUpdatedTime2 = [(_SFPBFlightLeg *)self lastUpdatedTime];
    lastUpdatedTime3 = [equalCopy lastUpdatedTime];
    v97 = [lastUpdatedTime2 isEqual:lastUpdatedTime3];

    if (!v97)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self pegasusDisplayFields];
  departurePublishedTime2 = [equalCopy pegasusDisplayFields];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  pegasusDisplayFields = [(_SFPBFlightLeg *)self pegasusDisplayFields];
  if (pegasusDisplayFields)
  {
    v99 = pegasusDisplayFields;
    pegasusDisplayFields2 = [(_SFPBFlightLeg *)self pegasusDisplayFields];
    pegasusDisplayFields3 = [equalCopy pegasusDisplayFields];
    v102 = [pegasusDisplayFields2 isEqual:pegasusDisplayFields3];

    if (!v102)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  pegasusDefinedState = self->_pegasusDefinedState;
  if (pegasusDefinedState != [equalCopy pegasusDefinedState])
  {
    goto LABEL_119;
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self gateArrivalTimes];
  departurePublishedTime2 = [equalCopy gateArrivalTimes];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  gateArrivalTimes = [(_SFPBFlightLeg *)self gateArrivalTimes];
  if (gateArrivalTimes)
  {
    v105 = gateArrivalTimes;
    gateArrivalTimes2 = [(_SFPBFlightLeg *)self gateArrivalTimes];
    gateArrivalTimes3 = [equalCopy gateArrivalTimes];
    v108 = [gateArrivalTimes2 isEqual:gateArrivalTimes3];

    if (!v108)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self runwayArrivalTimes];
  departurePublishedTime2 = [equalCopy runwayArrivalTimes];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  runwayArrivalTimes = [(_SFPBFlightLeg *)self runwayArrivalTimes];
  if (runwayArrivalTimes)
  {
    v110 = runwayArrivalTimes;
    runwayArrivalTimes2 = [(_SFPBFlightLeg *)self runwayArrivalTimes];
    runwayArrivalTimes3 = [equalCopy runwayArrivalTimes];
    v113 = [runwayArrivalTimes2 isEqual:runwayArrivalTimes3];

    if (!v113)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self gateDepartureTimes];
  departurePublishedTime2 = [equalCopy gateDepartureTimes];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
    goto LABEL_118;
  }

  gateDepartureTimes = [(_SFPBFlightLeg *)self gateDepartureTimes];
  if (gateDepartureTimes)
  {
    v115 = gateDepartureTimes;
    gateDepartureTimes2 = [(_SFPBFlightLeg *)self gateDepartureTimes];
    gateDepartureTimes3 = [equalCopy gateDepartureTimes];
    v118 = [gateDepartureTimes2 isEqual:gateDepartureTimes3];

    if (!v118)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self runwayDepartureTimes];
  departurePublishedTime2 = [equalCopy runwayDepartureTimes];
  if ((departurePublishedTime != 0) == (departurePublishedTime2 == 0))
  {
LABEL_118:

    goto LABEL_119;
  }

  runwayDepartureTimes = [(_SFPBFlightLeg *)self runwayDepartureTimes];
  if (!runwayDepartureTimes)
  {

LABEL_122:
    v124 = 1;
    goto LABEL_120;
  }

  v120 = runwayDepartureTimes;
  runwayDepartureTimes2 = [(_SFPBFlightLeg *)self runwayDepartureTimes];
  runwayDepartureTimes3 = [equalCopy runwayDepartureTimes];
  v123 = [runwayDepartureTimes2 isEqual:runwayDepartureTimes3];

  if (v123)
  {
    goto LABEL_122;
  }

LABEL_119:
  v124 = 0;
LABEL_120:

  return v124;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBFlightLeg *)self status])
  {
    PBDataWriterWriteInt32Field();
  }

  departurePublishedTime = [(_SFPBFlightLeg *)self departurePublishedTime];
  if (departurePublishedTime)
  {
    PBDataWriterWriteSubmessage();
  }

  departureActualTime = [(_SFPBFlightLeg *)self departureActualTime];
  if (departureActualTime)
  {
    PBDataWriterWriteSubmessage();
  }

  departureTerminal = [(_SFPBFlightLeg *)self departureTerminal];
  if (departureTerminal)
  {
    PBDataWriterWriteStringField();
  }

  departureGate = [(_SFPBFlightLeg *)self departureGate];
  if (departureGate)
  {
    PBDataWriterWriteStringField();
  }

  departureAirport = [(_SFPBFlightLeg *)self departureAirport];
  if (departureAirport)
  {
    PBDataWriterWriteSubmessage();
  }

  arrivalPublishedTime = [(_SFPBFlightLeg *)self arrivalPublishedTime];
  if (arrivalPublishedTime)
  {
    PBDataWriterWriteSubmessage();
  }

  arrivalActualTime = [(_SFPBFlightLeg *)self arrivalActualTime];
  if (arrivalActualTime)
  {
    PBDataWriterWriteSubmessage();
  }

  arrivalTerminal = [(_SFPBFlightLeg *)self arrivalTerminal];
  if (arrivalTerminal)
  {
    PBDataWriterWriteStringField();
  }

  arrivalGate = [(_SFPBFlightLeg *)self arrivalGate];
  if (arrivalGate)
  {
    PBDataWriterWriteStringField();
  }

  arrivalAirport = [(_SFPBFlightLeg *)self arrivalAirport];
  if (arrivalAirport)
  {
    PBDataWriterWriteSubmessage();
  }

  divertedAirport = [(_SFPBFlightLeg *)self divertedAirport];
  if (divertedAirport)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBFlightLeg *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  baggageClaim = [(_SFPBFlightLeg *)self baggageClaim];
  if (baggageClaim)
  {
    PBDataWriterWriteStringField();
  }

  departureGateClosedTime = [(_SFPBFlightLeg *)self departureGateClosedTime];
  if (departureGateClosedTime)
  {
    PBDataWriterWriteSubmessage();
  }

  departureRunwayTime = [(_SFPBFlightLeg *)self departureRunwayTime];
  if (departureRunwayTime)
  {
    PBDataWriterWriteSubmessage();
  }

  arrivalRunwayTime = [(_SFPBFlightLeg *)self arrivalRunwayTime];
  if (arrivalRunwayTime)
  {
    PBDataWriterWriteSubmessage();
  }

  arrivalGateTime = [(_SFPBFlightLeg *)self arrivalGateTime];
  if (arrivalGateTime)
  {
    PBDataWriterWriteSubmessage();
  }

  lastUpdatedTime = [(_SFPBFlightLeg *)self lastUpdatedTime];
  if (lastUpdatedTime)
  {
    PBDataWriterWriteSubmessage();
  }

  pegasusDisplayFields = [(_SFPBFlightLeg *)self pegasusDisplayFields];
  if (pegasusDisplayFields)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBFlightLeg *)self pegasusDefinedState])
  {
    PBDataWriterWriteInt32Field();
  }

  gateArrivalTimes = [(_SFPBFlightLeg *)self gateArrivalTimes];
  if (gateArrivalTimes)
  {
    PBDataWriterWriteSubmessage();
  }

  runwayArrivalTimes = [(_SFPBFlightLeg *)self runwayArrivalTimes];
  if (runwayArrivalTimes)
  {
    PBDataWriterWriteSubmessage();
  }

  gateDepartureTimes = [(_SFPBFlightLeg *)self gateDepartureTimes];
  if (gateDepartureTimes)
  {
    PBDataWriterWriteSubmessage();
  }

  runwayDepartureTimes = [(_SFPBFlightLeg *)self runwayDepartureTimes];
  if (runwayDepartureTimes)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setBaggageClaim:(id)claim
{
  v4 = [claim copy];
  baggageClaim = self->_baggageClaim;
  self->_baggageClaim = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setArrivalGate:(id)gate
{
  v4 = [gate copy];
  arrivalGate = self->_arrivalGate;
  self->_arrivalGate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setArrivalTerminal:(id)terminal
{
  v4 = [terminal copy];
  arrivalTerminal = self->_arrivalTerminal;
  self->_arrivalTerminal = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDepartureGate:(id)gate
{
  v4 = [gate copy];
  departureGate = self->_departureGate;
  self->_departureGate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDepartureTerminal:(id)terminal
{
  v4 = [terminal copy];
  departureTerminal = self->_departureTerminal;
  self->_departureTerminal = v4;

  MEMORY[0x1EEE66BB8]();
}

@end