@interface _SFPBFlightLeg
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBFlightLeg)initWithDictionary:(id)a3;
- (_SFPBFlightLeg)initWithFacade:(id)a3;
- (_SFPBFlightLeg)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setArrivalGate:(id)a3;
- (void)setArrivalTerminal:(id)a3;
- (void)setBaggageClaim:(id)a3;
- (void)setDepartureGate:(id)a3;
- (void)setDepartureTerminal:(id)a3;
- (void)setTitle:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBFlightLeg

- (_SFPBFlightLeg)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBFlightLeg *)self init];
  if (v5)
  {
    if ([v4 hasStatus])
    {
      -[_SFPBFlightLeg setStatus:](v5, "setStatus:", [v4 status]);
    }

    v6 = [v4 departurePublishedTime];

    if (v6)
    {
      v7 = [_SFPBDate alloc];
      v8 = [v4 departurePublishedTime];
      v9 = [(_SFPBDate *)v7 initWithNSDate:v8];
      [(_SFPBFlightLeg *)v5 setDeparturePublishedTime:v9];
    }

    v10 = [v4 departureActualTime];

    if (v10)
    {
      v11 = [_SFPBDate alloc];
      v12 = [v4 departureActualTime];
      v13 = [(_SFPBDate *)v11 initWithNSDate:v12];
      [(_SFPBFlightLeg *)v5 setDepartureActualTime:v13];
    }

    v14 = [v4 departureTerminal];

    if (v14)
    {
      v15 = [v4 departureTerminal];
      [(_SFPBFlightLeg *)v5 setDepartureTerminal:v15];
    }

    v16 = [v4 departureGate];

    if (v16)
    {
      v17 = [v4 departureGate];
      [(_SFPBFlightLeg *)v5 setDepartureGate:v17];
    }

    v18 = [v4 departureAirport];

    if (v18)
    {
      v19 = [_SFPBAirport alloc];
      v20 = [v4 departureAirport];
      v21 = [(_SFPBAirport *)v19 initWithFacade:v20];
      [(_SFPBFlightLeg *)v5 setDepartureAirport:v21];
    }

    v22 = [v4 arrivalPublishedTime];

    if (v22)
    {
      v23 = [_SFPBDate alloc];
      v24 = [v4 arrivalPublishedTime];
      v25 = [(_SFPBDate *)v23 initWithNSDate:v24];
      [(_SFPBFlightLeg *)v5 setArrivalPublishedTime:v25];
    }

    v26 = [v4 arrivalActualTime];

    if (v26)
    {
      v27 = [_SFPBDate alloc];
      v28 = [v4 arrivalActualTime];
      v29 = [(_SFPBDate *)v27 initWithNSDate:v28];
      [(_SFPBFlightLeg *)v5 setArrivalActualTime:v29];
    }

    v30 = [v4 arrivalTerminal];

    if (v30)
    {
      v31 = [v4 arrivalTerminal];
      [(_SFPBFlightLeg *)v5 setArrivalTerminal:v31];
    }

    v32 = [v4 arrivalGate];

    if (v32)
    {
      v33 = [v4 arrivalGate];
      [(_SFPBFlightLeg *)v5 setArrivalGate:v33];
    }

    v34 = [v4 arrivalAirport];

    if (v34)
    {
      v35 = [_SFPBAirport alloc];
      v36 = [v4 arrivalAirport];
      v37 = [(_SFPBAirport *)v35 initWithFacade:v36];
      [(_SFPBFlightLeg *)v5 setArrivalAirport:v37];
    }

    v38 = [v4 divertedAirport];

    if (v38)
    {
      v39 = [_SFPBAirport alloc];
      v40 = [v4 divertedAirport];
      v41 = [(_SFPBAirport *)v39 initWithFacade:v40];
      [(_SFPBFlightLeg *)v5 setDivertedAirport:v41];
    }

    v42 = [v4 title];

    if (v42)
    {
      v43 = [v4 title];
      [(_SFPBFlightLeg *)v5 setTitle:v43];
    }

    v44 = [v4 baggageClaim];

    if (v44)
    {
      v45 = [v4 baggageClaim];
      [(_SFPBFlightLeg *)v5 setBaggageClaim:v45];
    }

    v46 = [v4 departureGateClosedTime];

    if (v46)
    {
      v47 = [_SFPBDate alloc];
      v48 = [v4 departureGateClosedTime];
      v49 = [(_SFPBDate *)v47 initWithNSDate:v48];
      [(_SFPBFlightLeg *)v5 setDepartureGateClosedTime:v49];
    }

    v50 = [v4 departureRunwayTime];

    if (v50)
    {
      v51 = [_SFPBDate alloc];
      v52 = [v4 departureRunwayTime];
      v53 = [(_SFPBDate *)v51 initWithNSDate:v52];
      [(_SFPBFlightLeg *)v5 setDepartureRunwayTime:v53];
    }

    v54 = [v4 arrivalRunwayTime];

    if (v54)
    {
      v55 = [_SFPBDate alloc];
      v56 = [v4 arrivalRunwayTime];
      v57 = [(_SFPBDate *)v55 initWithNSDate:v56];
      [(_SFPBFlightLeg *)v5 setArrivalRunwayTime:v57];
    }

    v58 = [v4 arrivalGateTime];

    if (v58)
    {
      v59 = [_SFPBDate alloc];
      v60 = [v4 arrivalGateTime];
      v61 = [(_SFPBDate *)v59 initWithNSDate:v60];
      [(_SFPBFlightLeg *)v5 setArrivalGateTime:v61];
    }

    v62 = [v4 lastUpdatedTime];

    if (v62)
    {
      v63 = [_SFPBDate alloc];
      v64 = [v4 lastUpdatedTime];
      v65 = [(_SFPBDate *)v63 initWithNSDate:v64];
      [(_SFPBFlightLeg *)v5 setLastUpdatedTime:v65];
    }

    v66 = [v4 pegasusDisplayFields];

    if (v66)
    {
      v67 = [_SFPBPegasusDisplayFields alloc];
      v68 = [v4 pegasusDisplayFields];
      v69 = [(_SFPBPegasusDisplayFields *)v67 initWithFacade:v68];
      [(_SFPBFlightLeg *)v5 setPegasusDisplayFields:v69];
    }

    if ([v4 hasPegasusDefinedState])
    {
      -[_SFPBFlightLeg setPegasusDefinedState:](v5, "setPegasusDefinedState:", [v4 pegasusDefinedState]);
    }

    v70 = [v4 gateArrivalTimes];

    if (v70)
    {
      v71 = [_SFPBFlightDateDescriptor alloc];
      v72 = [v4 gateArrivalTimes];
      v73 = [(_SFPBFlightDateDescriptor *)v71 initWithFacade:v72];
      [(_SFPBFlightLeg *)v5 setGateArrivalTimes:v73];
    }

    v74 = [v4 runwayArrivalTimes];

    if (v74)
    {
      v75 = [_SFPBFlightDateDescriptor alloc];
      v76 = [v4 runwayArrivalTimes];
      v77 = [(_SFPBFlightDateDescriptor *)v75 initWithFacade:v76];
      [(_SFPBFlightLeg *)v5 setRunwayArrivalTimes:v77];
    }

    v78 = [v4 gateDepartureTimes];

    if (v78)
    {
      v79 = [_SFPBFlightDateDescriptor alloc];
      v80 = [v4 gateDepartureTimes];
      v81 = [(_SFPBFlightDateDescriptor *)v79 initWithFacade:v80];
      [(_SFPBFlightLeg *)v5 setGateDepartureTimes:v81];
    }

    v82 = [v4 runwayDepartureTimes];

    if (v82)
    {
      v83 = [_SFPBFlightDateDescriptor alloc];
      v84 = [v4 runwayDepartureTimes];
      v85 = [(_SFPBFlightDateDescriptor *)v83 initWithFacade:v84];
      [(_SFPBFlightLeg *)v5 setRunwayDepartureTimes:v85];
    }

    v86 = v5;
  }

  return v5;
}

- (_SFPBFlightLeg)initWithDictionary:(id)a3
{
  v4 = a3;
  v74.receiver = self;
  v74.super_class = _SFPBFlightLeg;
  v5 = [(_SFPBFlightLeg *)&v74 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFlightLeg setStatus:](v5, "setStatus:", [v6 intValue]);
    }

    v64 = v6;
    v7 = [v4 objectForKeyedSubscript:@"departurePublishedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBDate alloc] initWithDictionary:v7];
      [(_SFPBFlightLeg *)v5 setDeparturePublishedTime:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"departureActualTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[_SFPBDate alloc] initWithDictionary:v9];
      [(_SFPBFlightLeg *)v5 setDepartureActualTime:v10];
    }

    v62 = v9;
    v11 = [v4 objectForKeyedSubscript:@"departureTerminal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(_SFPBFlightLeg *)v5 setDepartureTerminal:v12];
    }

    v61 = v11;
    v13 = [v4 objectForKeyedSubscript:@"departureGate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(_SFPBFlightLeg *)v5 setDepartureGate:v14];
    }

    v60 = v13;
    v15 = [v4 objectForKeyedSubscript:@"departureAirport"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBAirport alloc] initWithDictionary:v15];
      [(_SFPBFlightLeg *)v5 setDepartureAirport:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"arrivalPublishedTime"];
    objc_opt_class();
    v73 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = [[_SFPBDate alloc] initWithDictionary:v17];
      [(_SFPBFlightLeg *)v5 setArrivalPublishedTime:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"arrivalActualTime"];
    objc_opt_class();
    v72 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = [[_SFPBDate alloc] initWithDictionary:v19];
      [(_SFPBFlightLeg *)v5 setArrivalActualTime:v20];
    }

    v21 = [v4 objectForKeyedSubscript:@"arrivalTerminal"];
    objc_opt_class();
    v71 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBFlightLeg *)v5 setArrivalTerminal:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"arrivalGate"];
    objc_opt_class();
    v70 = v23;
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      [(_SFPBFlightLeg *)v5 setArrivalGate:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"arrivalAirport"];
    objc_opt_class();
    v69 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBAirport alloc] initWithDictionary:v25];
      [(_SFPBFlightLeg *)v5 setArrivalAirport:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"divertedAirport"];
    objc_opt_class();
    v68 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [[_SFPBAirport alloc] initWithDictionary:v27];
      [(_SFPBFlightLeg *)v5 setDivertedAirport:v28];
    }

    v29 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 copy];
      [(_SFPBFlightLeg *)v5 setTitle:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"baggageClaim"];
    objc_opt_class();
    v67 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = [v31 copy];
      [(_SFPBFlightLeg *)v5 setBaggageClaim:v32];
    }

    v33 = [v4 objectForKeyedSubscript:@"departureGateClosedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBDate alloc] initWithDictionary:v33];
      [(_SFPBFlightLeg *)v5 setDepartureGateClosedTime:v34];
    }

    v35 = [v4 objectForKeyedSubscript:@"departureRunwayTime"];
    objc_opt_class();
    v66 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = [[_SFPBDate alloc] initWithDictionary:v35];
      [(_SFPBFlightLeg *)v5 setDepartureRunwayTime:v36];
    }

    v37 = [v4 objectForKeyedSubscript:@"arrivalRunwayTime"];
    objc_opt_class();
    v65 = v37;
    if (objc_opt_isKindOfClass())
    {
      v38 = [[_SFPBDate alloc] initWithDictionary:v37];
      [(_SFPBFlightLeg *)v5 setArrivalRunwayTime:v38];
    }

    v57 = v33;
    v39 = [v4 objectForKeyedSubscript:@"arrivalGateTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[_SFPBDate alloc] initWithDictionary:v39];
      [(_SFPBFlightLeg *)v5 setArrivalGateTime:v40];
    }

    v56 = v39;
    v41 = [v4 objectForKeyedSubscript:@"lastUpdatedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [[_SFPBDate alloc] initWithDictionary:v41];
      [(_SFPBFlightLeg *)v5 setLastUpdatedTime:v42];
    }

    v58 = v29;
    v43 = [v4 objectForKeyedSubscript:@"pegasusDisplayFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [[_SFPBPegasusDisplayFields alloc] initWithDictionary:v43];
      [(_SFPBFlightLeg *)v5 setPegasusDisplayFields:v44];
    }

    v63 = v7;
    v45 = [v4 objectForKeyedSubscript:@"pegasusDefinedState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFlightLeg setPegasusDefinedState:](v5, "setPegasusDefinedState:", [v45 intValue]);
    }

    v59 = v15;
    v46 = [v4 objectForKeyedSubscript:@"gateArrivalTimes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBFlightDateDescriptor alloc] initWithDictionary:v46];
      [(_SFPBFlightLeg *)v5 setGateArrivalTimes:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"runwayArrivalTimes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBFlightDateDescriptor alloc] initWithDictionary:v48];
      [(_SFPBFlightLeg *)v5 setRunwayArrivalTimes:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"gateDepartureTimes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBFlightDateDescriptor alloc] initWithDictionary:v50];
      [(_SFPBFlightLeg *)v5 setGateDepartureTimes:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"runwayDepartureTimes"];
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

- (_SFPBFlightLeg)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBFlightLeg *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBFlightLeg *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_arrivalActualTime)
  {
    v4 = [(_SFPBFlightLeg *)self arrivalActualTime];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"arrivalActualTime"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"arrivalActualTime"];
    }
  }

  if (self->_arrivalAirport)
  {
    v7 = [(_SFPBFlightLeg *)self arrivalAirport];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"arrivalAirport"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"arrivalAirport"];
    }
  }

  if (self->_arrivalGate)
  {
    v10 = [(_SFPBFlightLeg *)self arrivalGate];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"arrivalGate"];
  }

  if (self->_arrivalGateTime)
  {
    v12 = [(_SFPBFlightLeg *)self arrivalGateTime];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"arrivalGateTime"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"arrivalGateTime"];
    }
  }

  if (self->_arrivalPublishedTime)
  {
    v15 = [(_SFPBFlightLeg *)self arrivalPublishedTime];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"arrivalPublishedTime"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"arrivalPublishedTime"];
    }
  }

  if (self->_arrivalRunwayTime)
  {
    v18 = [(_SFPBFlightLeg *)self arrivalRunwayTime];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"arrivalRunwayTime"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"arrivalRunwayTime"];
    }
  }

  if (self->_arrivalTerminal)
  {
    v21 = [(_SFPBFlightLeg *)self arrivalTerminal];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"arrivalTerminal"];
  }

  if (self->_baggageClaim)
  {
    v23 = [(_SFPBFlightLeg *)self baggageClaim];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"baggageClaim"];
  }

  if (self->_departureActualTime)
  {
    v25 = [(_SFPBFlightLeg *)self departureActualTime];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"departureActualTime"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"departureActualTime"];
    }
  }

  if (self->_departureAirport)
  {
    v28 = [(_SFPBFlightLeg *)self departureAirport];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"departureAirport"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"departureAirport"];
    }
  }

  if (self->_departureGate)
  {
    v31 = [(_SFPBFlightLeg *)self departureGate];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"departureGate"];
  }

  if (self->_departureGateClosedTime)
  {
    v33 = [(_SFPBFlightLeg *)self departureGateClosedTime];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"departureGateClosedTime"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"departureGateClosedTime"];
    }
  }

  if (self->_departurePublishedTime)
  {
    v36 = [(_SFPBFlightLeg *)self departurePublishedTime];
    v37 = [v36 dictionaryRepresentation];
    if (v37)
    {
      [v3 setObject:v37 forKeyedSubscript:@"departurePublishedTime"];
    }

    else
    {
      v38 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v38 forKeyedSubscript:@"departurePublishedTime"];
    }
  }

  if (self->_departureRunwayTime)
  {
    v39 = [(_SFPBFlightLeg *)self departureRunwayTime];
    v40 = [v39 dictionaryRepresentation];
    if (v40)
    {
      [v3 setObject:v40 forKeyedSubscript:@"departureRunwayTime"];
    }

    else
    {
      v41 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v41 forKeyedSubscript:@"departureRunwayTime"];
    }
  }

  if (self->_departureTerminal)
  {
    v42 = [(_SFPBFlightLeg *)self departureTerminal];
    v43 = [v42 copy];
    [v3 setObject:v43 forKeyedSubscript:@"departureTerminal"];
  }

  if (self->_divertedAirport)
  {
    v44 = [(_SFPBFlightLeg *)self divertedAirport];
    v45 = [v44 dictionaryRepresentation];
    if (v45)
    {
      [v3 setObject:v45 forKeyedSubscript:@"divertedAirport"];
    }

    else
    {
      v46 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v46 forKeyedSubscript:@"divertedAirport"];
    }
  }

  if (self->_gateArrivalTimes)
  {
    v47 = [(_SFPBFlightLeg *)self gateArrivalTimes];
    v48 = [v47 dictionaryRepresentation];
    if (v48)
    {
      [v3 setObject:v48 forKeyedSubscript:@"gateArrivalTimes"];
    }

    else
    {
      v49 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v49 forKeyedSubscript:@"gateArrivalTimes"];
    }
  }

  if (self->_gateDepartureTimes)
  {
    v50 = [(_SFPBFlightLeg *)self gateDepartureTimes];
    v51 = [v50 dictionaryRepresentation];
    if (v51)
    {
      [v3 setObject:v51 forKeyedSubscript:@"gateDepartureTimes"];
    }

    else
    {
      v52 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v52 forKeyedSubscript:@"gateDepartureTimes"];
    }
  }

  if (self->_lastUpdatedTime)
  {
    v53 = [(_SFPBFlightLeg *)self lastUpdatedTime];
    v54 = [v53 dictionaryRepresentation];
    if (v54)
    {
      [v3 setObject:v54 forKeyedSubscript:@"lastUpdatedTime"];
    }

    else
    {
      v55 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v55 forKeyedSubscript:@"lastUpdatedTime"];
    }
  }

  if (self->_pegasusDefinedState)
  {
    v56 = [(_SFPBFlightLeg *)self pegasusDefinedState];
    if (v56 >= 0xA)
    {
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v56];
    }

    else
    {
      v57 = off_1E7ACE220[v56];
    }

    [v3 setObject:v57 forKeyedSubscript:@"pegasusDefinedState"];
  }

  if (self->_pegasusDisplayFields)
  {
    v58 = [(_SFPBFlightLeg *)self pegasusDisplayFields];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"pegasusDisplayFields"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"pegasusDisplayFields"];
    }
  }

  if (self->_runwayArrivalTimes)
  {
    v61 = [(_SFPBFlightLeg *)self runwayArrivalTimes];
    v62 = [v61 dictionaryRepresentation];
    if (v62)
    {
      [v3 setObject:v62 forKeyedSubscript:@"runwayArrivalTimes"];
    }

    else
    {
      v63 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v63 forKeyedSubscript:@"runwayArrivalTimes"];
    }
  }

  if (self->_runwayDepartureTimes)
  {
    v64 = [(_SFPBFlightLeg *)self runwayDepartureTimes];
    v65 = [v64 dictionaryRepresentation];
    if (v65)
    {
      [v3 setObject:v65 forKeyedSubscript:@"runwayDepartureTimes"];
    }

    else
    {
      v66 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v66 forKeyedSubscript:@"runwayDepartureTimes"];
    }
  }

  if (self->_status)
  {
    v67 = [(_SFPBFlightLeg *)self status];
    if (v67 >= 0xA)
    {
      v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v67];
    }

    else
    {
      v68 = off_1E7ACE220[v67];
    }

    [v3 setObject:v68 forKeyedSubscript:@"status"];
  }

  if (self->_title)
  {
    v69 = [(_SFPBFlightLeg *)self title];
    v70 = [v69 copy];
    [v3 setObject:v70 forKeyedSubscript:@"title"];
  }

  v71 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_119;
  }

  status = self->_status;
  if (status != [v4 status])
  {
    goto LABEL_119;
  }

  v6 = [(_SFPBFlightLeg *)self departurePublishedTime];
  v7 = [v4 departurePublishedTime];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v8 = [(_SFPBFlightLeg *)self departurePublishedTime];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBFlightLeg *)self departurePublishedTime];
    v11 = [v4 departurePublishedTime];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self departureActualTime];
  v7 = [v4 departureActualTime];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v13 = [(_SFPBFlightLeg *)self departureActualTime];
  if (v13)
  {
    v14 = v13;
    v15 = [(_SFPBFlightLeg *)self departureActualTime];
    v16 = [v4 departureActualTime];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self departureTerminal];
  v7 = [v4 departureTerminal];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v18 = [(_SFPBFlightLeg *)self departureTerminal];
  if (v18)
  {
    v19 = v18;
    v20 = [(_SFPBFlightLeg *)self departureTerminal];
    v21 = [v4 departureTerminal];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self departureGate];
  v7 = [v4 departureGate];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v23 = [(_SFPBFlightLeg *)self departureGate];
  if (v23)
  {
    v24 = v23;
    v25 = [(_SFPBFlightLeg *)self departureGate];
    v26 = [v4 departureGate];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self departureAirport];
  v7 = [v4 departureAirport];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v28 = [(_SFPBFlightLeg *)self departureAirport];
  if (v28)
  {
    v29 = v28;
    v30 = [(_SFPBFlightLeg *)self departureAirport];
    v31 = [v4 departureAirport];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self arrivalPublishedTime];
  v7 = [v4 arrivalPublishedTime];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v33 = [(_SFPBFlightLeg *)self arrivalPublishedTime];
  if (v33)
  {
    v34 = v33;
    v35 = [(_SFPBFlightLeg *)self arrivalPublishedTime];
    v36 = [v4 arrivalPublishedTime];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self arrivalActualTime];
  v7 = [v4 arrivalActualTime];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v38 = [(_SFPBFlightLeg *)self arrivalActualTime];
  if (v38)
  {
    v39 = v38;
    v40 = [(_SFPBFlightLeg *)self arrivalActualTime];
    v41 = [v4 arrivalActualTime];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self arrivalTerminal];
  v7 = [v4 arrivalTerminal];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v43 = [(_SFPBFlightLeg *)self arrivalTerminal];
  if (v43)
  {
    v44 = v43;
    v45 = [(_SFPBFlightLeg *)self arrivalTerminal];
    v46 = [v4 arrivalTerminal];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self arrivalGate];
  v7 = [v4 arrivalGate];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v48 = [(_SFPBFlightLeg *)self arrivalGate];
  if (v48)
  {
    v49 = v48;
    v50 = [(_SFPBFlightLeg *)self arrivalGate];
    v51 = [v4 arrivalGate];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self arrivalAirport];
  v7 = [v4 arrivalAirport];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v53 = [(_SFPBFlightLeg *)self arrivalAirport];
  if (v53)
  {
    v54 = v53;
    v55 = [(_SFPBFlightLeg *)self arrivalAirport];
    v56 = [v4 arrivalAirport];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self divertedAirport];
  v7 = [v4 divertedAirport];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v58 = [(_SFPBFlightLeg *)self divertedAirport];
  if (v58)
  {
    v59 = v58;
    v60 = [(_SFPBFlightLeg *)self divertedAirport];
    v61 = [v4 divertedAirport];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self title];
  v7 = [v4 title];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v63 = [(_SFPBFlightLeg *)self title];
  if (v63)
  {
    v64 = v63;
    v65 = [(_SFPBFlightLeg *)self title];
    v66 = [v4 title];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self baggageClaim];
  v7 = [v4 baggageClaim];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v68 = [(_SFPBFlightLeg *)self baggageClaim];
  if (v68)
  {
    v69 = v68;
    v70 = [(_SFPBFlightLeg *)self baggageClaim];
    v71 = [v4 baggageClaim];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self departureGateClosedTime];
  v7 = [v4 departureGateClosedTime];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v73 = [(_SFPBFlightLeg *)self departureGateClosedTime];
  if (v73)
  {
    v74 = v73;
    v75 = [(_SFPBFlightLeg *)self departureGateClosedTime];
    v76 = [v4 departureGateClosedTime];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self departureRunwayTime];
  v7 = [v4 departureRunwayTime];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v78 = [(_SFPBFlightLeg *)self departureRunwayTime];
  if (v78)
  {
    v79 = v78;
    v80 = [(_SFPBFlightLeg *)self departureRunwayTime];
    v81 = [v4 departureRunwayTime];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self arrivalRunwayTime];
  v7 = [v4 arrivalRunwayTime];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v83 = [(_SFPBFlightLeg *)self arrivalRunwayTime];
  if (v83)
  {
    v84 = v83;
    v85 = [(_SFPBFlightLeg *)self arrivalRunwayTime];
    v86 = [v4 arrivalRunwayTime];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self arrivalGateTime];
  v7 = [v4 arrivalGateTime];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v88 = [(_SFPBFlightLeg *)self arrivalGateTime];
  if (v88)
  {
    v89 = v88;
    v90 = [(_SFPBFlightLeg *)self arrivalGateTime];
    v91 = [v4 arrivalGateTime];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self lastUpdatedTime];
  v7 = [v4 lastUpdatedTime];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v93 = [(_SFPBFlightLeg *)self lastUpdatedTime];
  if (v93)
  {
    v94 = v93;
    v95 = [(_SFPBFlightLeg *)self lastUpdatedTime];
    v96 = [v4 lastUpdatedTime];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self pegasusDisplayFields];
  v7 = [v4 pegasusDisplayFields];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v98 = [(_SFPBFlightLeg *)self pegasusDisplayFields];
  if (v98)
  {
    v99 = v98;
    v100 = [(_SFPBFlightLeg *)self pegasusDisplayFields];
    v101 = [v4 pegasusDisplayFields];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  pegasusDefinedState = self->_pegasusDefinedState;
  if (pegasusDefinedState != [v4 pegasusDefinedState])
  {
    goto LABEL_119;
  }

  v6 = [(_SFPBFlightLeg *)self gateArrivalTimes];
  v7 = [v4 gateArrivalTimes];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v104 = [(_SFPBFlightLeg *)self gateArrivalTimes];
  if (v104)
  {
    v105 = v104;
    v106 = [(_SFPBFlightLeg *)self gateArrivalTimes];
    v107 = [v4 gateArrivalTimes];
    v108 = [v106 isEqual:v107];

    if (!v108)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self runwayArrivalTimes];
  v7 = [v4 runwayArrivalTimes];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v109 = [(_SFPBFlightLeg *)self runwayArrivalTimes];
  if (v109)
  {
    v110 = v109;
    v111 = [(_SFPBFlightLeg *)self runwayArrivalTimes];
    v112 = [v4 runwayArrivalTimes];
    v113 = [v111 isEqual:v112];

    if (!v113)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self gateDepartureTimes];
  v7 = [v4 gateDepartureTimes];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_118;
  }

  v114 = [(_SFPBFlightLeg *)self gateDepartureTimes];
  if (v114)
  {
    v115 = v114;
    v116 = [(_SFPBFlightLeg *)self gateDepartureTimes];
    v117 = [v4 gateDepartureTimes];
    v118 = [v116 isEqual:v117];

    if (!v118)
    {
      goto LABEL_119;
    }
  }

  else
  {
  }

  v6 = [(_SFPBFlightLeg *)self runwayDepartureTimes];
  v7 = [v4 runwayDepartureTimes];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_118:

    goto LABEL_119;
  }

  v119 = [(_SFPBFlightLeg *)self runwayDepartureTimes];
  if (!v119)
  {

LABEL_122:
    v124 = 1;
    goto LABEL_120;
  }

  v120 = v119;
  v121 = [(_SFPBFlightLeg *)self runwayDepartureTimes];
  v122 = [v4 runwayDepartureTimes];
  v123 = [v121 isEqual:v122];

  if (v123)
  {
    goto LABEL_122;
  }

LABEL_119:
  v124 = 0;
LABEL_120:

  return v124;
}

- (void)writeTo:(id)a3
{
  v27 = a3;
  if ([(_SFPBFlightLeg *)self status])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBFlightLeg *)self departurePublishedTime];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = [(_SFPBFlightLeg *)self departureActualTime];
  if (v5)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_SFPBFlightLeg *)self departureTerminal];
  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(_SFPBFlightLeg *)self departureGate];
  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(_SFPBFlightLeg *)self departureAirport];
  if (v8)
  {
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_SFPBFlightLeg *)self arrivalPublishedTime];
  if (v9)
  {
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_SFPBFlightLeg *)self arrivalActualTime];
  if (v10)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_SFPBFlightLeg *)self arrivalTerminal];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBFlightLeg *)self arrivalGate];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = [(_SFPBFlightLeg *)self arrivalAirport];
  if (v13)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = [(_SFPBFlightLeg *)self divertedAirport];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBFlightLeg *)self title];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(_SFPBFlightLeg *)self baggageClaim];
  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  v17 = [(_SFPBFlightLeg *)self departureGateClosedTime];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBFlightLeg *)self departureRunwayTime];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBFlightLeg *)self arrivalRunwayTime];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_SFPBFlightLeg *)self arrivalGateTime];
  if (v20)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_SFPBFlightLeg *)self lastUpdatedTime];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_SFPBFlightLeg *)self pegasusDisplayFields];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBFlightLeg *)self pegasusDefinedState])
  {
    PBDataWriterWriteInt32Field();
  }

  v23 = [(_SFPBFlightLeg *)self gateArrivalTimes];
  if (v23)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = [(_SFPBFlightLeg *)self runwayArrivalTimes];
  if (v24)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = [(_SFPBFlightLeg *)self gateDepartureTimes];
  if (v25)
  {
    PBDataWriterWriteSubmessage();
  }

  v26 = [(_SFPBFlightLeg *)self runwayDepartureTimes];
  if (v26)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setBaggageClaim:(id)a3
{
  v4 = [a3 copy];
  baggageClaim = self->_baggageClaim;
  self->_baggageClaim = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setArrivalGate:(id)a3
{
  v4 = [a3 copy];
  arrivalGate = self->_arrivalGate;
  self->_arrivalGate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setArrivalTerminal:(id)a3
{
  v4 = [a3 copy];
  arrivalTerminal = self->_arrivalTerminal;
  self->_arrivalTerminal = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDepartureGate:(id)a3
{
  v4 = [a3 copy];
  departureGate = self->_departureGate;
  self->_departureGate = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setDepartureTerminal:(id)a3
{
  v4 = [a3 copy];
  departureTerminal = self->_departureTerminal;
  self->_departureTerminal = v4;

  MEMORY[0x1EEE66BB8]();
}

@end