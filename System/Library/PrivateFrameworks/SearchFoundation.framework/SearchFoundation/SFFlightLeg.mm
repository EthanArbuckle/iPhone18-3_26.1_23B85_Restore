@interface SFFlightLeg
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFlightLeg)initWithCoder:(id)coder;
- (SFFlightLeg)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFFlightLeg

- (SFFlightLeg)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v88.receiver = self;
  v88.super_class = SFFlightLeg;
  v5 = [(SFFlightLeg *)&v88 init];
  if (v5)
  {
    if ([protobufCopy status])
    {
      -[SFFlightLeg setStatus:](v5, "setStatus:", [protobufCopy status]);
    }

    departurePublishedTime = [protobufCopy departurePublishedTime];

    if (departurePublishedTime)
    {
      departurePublishedTime2 = [protobufCopy departurePublishedTime];
      v8 = MEMORY[0x1E695DF00];
      [departurePublishedTime2 secondsSince1970];
      v9 = [v8 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setDeparturePublishedTime:v9];
    }

    departureActualTime = [protobufCopy departureActualTime];

    if (departureActualTime)
    {
      departureActualTime2 = [protobufCopy departureActualTime];
      v12 = MEMORY[0x1E695DF00];
      [departureActualTime2 secondsSince1970];
      v13 = [v12 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setDepartureActualTime:v13];
    }

    departureTerminal = [protobufCopy departureTerminal];

    if (departureTerminal)
    {
      departureTerminal2 = [protobufCopy departureTerminal];
      [(SFFlightLeg *)v5 setDepartureTerminal:departureTerminal2];
    }

    departureGate = [protobufCopy departureGate];

    if (departureGate)
    {
      departureGate2 = [protobufCopy departureGate];
      [(SFFlightLeg *)v5 setDepartureGate:departureGate2];
    }

    departureAirport = [protobufCopy departureAirport];

    if (departureAirport)
    {
      v19 = [SFAirport alloc];
      departureAirport2 = [protobufCopy departureAirport];
      v21 = [(SFAirport *)v19 initWithProtobuf:departureAirport2];
      [(SFFlightLeg *)v5 setDepartureAirport:v21];
    }

    arrivalPublishedTime = [protobufCopy arrivalPublishedTime];

    if (arrivalPublishedTime)
    {
      arrivalPublishedTime2 = [protobufCopy arrivalPublishedTime];
      v24 = MEMORY[0x1E695DF00];
      [arrivalPublishedTime2 secondsSince1970];
      v25 = [v24 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setArrivalPublishedTime:v25];
    }

    arrivalActualTime = [protobufCopy arrivalActualTime];

    if (arrivalActualTime)
    {
      arrivalActualTime2 = [protobufCopy arrivalActualTime];
      v28 = MEMORY[0x1E695DF00];
      [arrivalActualTime2 secondsSince1970];
      v29 = [v28 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setArrivalActualTime:v29];
    }

    arrivalTerminal = [protobufCopy arrivalTerminal];

    if (arrivalTerminal)
    {
      arrivalTerminal2 = [protobufCopy arrivalTerminal];
      [(SFFlightLeg *)v5 setArrivalTerminal:arrivalTerminal2];
    }

    arrivalGate = [protobufCopy arrivalGate];

    if (arrivalGate)
    {
      arrivalGate2 = [protobufCopy arrivalGate];
      [(SFFlightLeg *)v5 setArrivalGate:arrivalGate2];
    }

    arrivalAirport = [protobufCopy arrivalAirport];

    if (arrivalAirport)
    {
      v35 = [SFAirport alloc];
      arrivalAirport2 = [protobufCopy arrivalAirport];
      v37 = [(SFAirport *)v35 initWithProtobuf:arrivalAirport2];
      [(SFFlightLeg *)v5 setArrivalAirport:v37];
    }

    divertedAirport = [protobufCopy divertedAirport];

    if (divertedAirport)
    {
      v39 = [SFAirport alloc];
      divertedAirport2 = [protobufCopy divertedAirport];
      v41 = [(SFAirport *)v39 initWithProtobuf:divertedAirport2];
      [(SFFlightLeg *)v5 setDivertedAirport:v41];
    }

    title = [protobufCopy title];

    if (title)
    {
      title2 = [protobufCopy title];
      [(SFFlightLeg *)v5 setTitle:title2];
    }

    baggageClaim = [protobufCopy baggageClaim];

    if (baggageClaim)
    {
      baggageClaim2 = [protobufCopy baggageClaim];
      [(SFFlightLeg *)v5 setBaggageClaim:baggageClaim2];
    }

    departureGateClosedTime = [protobufCopy departureGateClosedTime];

    if (departureGateClosedTime)
    {
      departureGateClosedTime2 = [protobufCopy departureGateClosedTime];
      v48 = MEMORY[0x1E695DF00];
      [departureGateClosedTime2 secondsSince1970];
      v49 = [v48 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setDepartureGateClosedTime:v49];
    }

    departureRunwayTime = [protobufCopy departureRunwayTime];

    if (departureRunwayTime)
    {
      departureRunwayTime2 = [protobufCopy departureRunwayTime];
      v52 = MEMORY[0x1E695DF00];
      [departureRunwayTime2 secondsSince1970];
      v53 = [v52 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setDepartureRunwayTime:v53];
    }

    arrivalRunwayTime = [protobufCopy arrivalRunwayTime];

    if (arrivalRunwayTime)
    {
      arrivalRunwayTime2 = [protobufCopy arrivalRunwayTime];
      v56 = MEMORY[0x1E695DF00];
      [arrivalRunwayTime2 secondsSince1970];
      v57 = [v56 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setArrivalRunwayTime:v57];
    }

    arrivalGateTime = [protobufCopy arrivalGateTime];

    if (arrivalGateTime)
    {
      arrivalGateTime2 = [protobufCopy arrivalGateTime];
      v60 = MEMORY[0x1E695DF00];
      [arrivalGateTime2 secondsSince1970];
      v61 = [v60 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setArrivalGateTime:v61];
    }

    lastUpdatedTime = [protobufCopy lastUpdatedTime];

    if (lastUpdatedTime)
    {
      lastUpdatedTime2 = [protobufCopy lastUpdatedTime];
      v64 = MEMORY[0x1E695DF00];
      [lastUpdatedTime2 secondsSince1970];
      v65 = [v64 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setLastUpdatedTime:v65];
    }

    pegasusDisplayFields = [protobufCopy pegasusDisplayFields];

    if (pegasusDisplayFields)
    {
      v67 = [SFPegasusDisplayFields alloc];
      pegasusDisplayFields2 = [protobufCopy pegasusDisplayFields];
      v69 = [(SFPegasusDisplayFields *)v67 initWithProtobuf:pegasusDisplayFields2];
      [(SFFlightLeg *)v5 setPegasusDisplayFields:v69];
    }

    if ([protobufCopy pegasusDefinedState])
    {
      -[SFFlightLeg setPegasusDefinedState:](v5, "setPegasusDefinedState:", [protobufCopy pegasusDefinedState]);
    }

    gateArrivalTimes = [protobufCopy gateArrivalTimes];

    if (gateArrivalTimes)
    {
      v71 = [SFFlightDateDescriptor alloc];
      gateArrivalTimes2 = [protobufCopy gateArrivalTimes];
      v73 = [(SFFlightDateDescriptor *)v71 initWithProtobuf:gateArrivalTimes2];
      [(SFFlightLeg *)v5 setGateArrivalTimes:v73];
    }

    runwayArrivalTimes = [protobufCopy runwayArrivalTimes];

    if (runwayArrivalTimes)
    {
      v75 = [SFFlightDateDescriptor alloc];
      runwayArrivalTimes2 = [protobufCopy runwayArrivalTimes];
      v77 = [(SFFlightDateDescriptor *)v75 initWithProtobuf:runwayArrivalTimes2];
      [(SFFlightLeg *)v5 setRunwayArrivalTimes:v77];
    }

    gateDepartureTimes = [protobufCopy gateDepartureTimes];

    if (gateDepartureTimes)
    {
      v79 = [SFFlightDateDescriptor alloc];
      gateDepartureTimes2 = [protobufCopy gateDepartureTimes];
      v81 = [(SFFlightDateDescriptor *)v79 initWithProtobuf:gateDepartureTimes2];
      [(SFFlightLeg *)v5 setGateDepartureTimes:v81];
    }

    runwayDepartureTimes = [protobufCopy runwayDepartureTimes];

    if (runwayDepartureTimes)
    {
      v83 = [SFFlightDateDescriptor alloc];
      runwayDepartureTimes2 = [protobufCopy runwayDepartureTimes];
      v85 = [(SFFlightDateDescriptor *)v83 initWithProtobuf:runwayDepartureTimes2];
      [(SFFlightLeg *)v5 setRunwayDepartureTimes:v85];
    }

    v86 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  status = [(SFFlightLeg *)self status];
  departurePublishedTime = [(SFFlightLeg *)self departurePublishedTime];
  v4 = [departurePublishedTime hash] ^ status;
  departureActualTime = [(SFFlightLeg *)self departureActualTime];
  v5 = [departureActualTime hash];
  departureTerminal = [(SFFlightLeg *)self departureTerminal];
  v6 = v4 ^ v5 ^ [departureTerminal hash];
  departureGate = [(SFFlightLeg *)self departureGate];
  v7 = [departureGate hash];
  departureAirport = [(SFFlightLeg *)self departureAirport];
  v8 = v7 ^ [departureAirport hash];
  arrivalPublishedTime = [(SFFlightLeg *)self arrivalPublishedTime];
  v9 = v6 ^ v8 ^ [arrivalPublishedTime hash];
  arrivalActualTime = [(SFFlightLeg *)self arrivalActualTime];
  v10 = [arrivalActualTime hash];
  arrivalTerminal = [(SFFlightLeg *)self arrivalTerminal];
  v11 = v10 ^ [arrivalTerminal hash];
  arrivalGate = [(SFFlightLeg *)self arrivalGate];
  v12 = v11 ^ [arrivalGate hash];
  arrivalAirport = [(SFFlightLeg *)self arrivalAirport];
  v13 = v9 ^ v12 ^ [arrivalAirport hash];
  divertedAirport = [(SFFlightLeg *)self divertedAirport];
  v14 = [divertedAirport hash];
  title = [(SFFlightLeg *)self title];
  v15 = v14 ^ [title hash];
  baggageClaim = [(SFFlightLeg *)self baggageClaim];
  v16 = v15 ^ [baggageClaim hash];
  departureGateClosedTime = [(SFFlightLeg *)self departureGateClosedTime];
  v17 = v16 ^ [departureGateClosedTime hash];
  departureRunwayTime = [(SFFlightLeg *)self departureRunwayTime];
  v18 = v13 ^ v17 ^ [departureRunwayTime hash];
  arrivalRunwayTime = [(SFFlightLeg *)self arrivalRunwayTime];
  v20 = [arrivalRunwayTime hash];
  arrivalGateTime = [(SFFlightLeg *)self arrivalGateTime];
  v22 = v20 ^ [arrivalGateTime hash];
  lastUpdatedTime = [(SFFlightLeg *)self lastUpdatedTime];
  v24 = v22 ^ [lastUpdatedTime hash];
  pegasusDisplayFields = [(SFFlightLeg *)self pegasusDisplayFields];
  v26 = v24 ^ [pegasusDisplayFields hash];
  v27 = v26 ^ [(SFFlightLeg *)self pegasusDefinedState];
  gateArrivalTimes = [(SFFlightLeg *)self gateArrivalTimes];
  v36 = v18 ^ v27 ^ [gateArrivalTimes hash];
  runwayArrivalTimes = [(SFFlightLeg *)self runwayArrivalTimes];
  v30 = [runwayArrivalTimes hash];
  gateDepartureTimes = [(SFFlightLeg *)self gateDepartureTimes];
  v32 = v30 ^ [gateDepartureTimes hash];
  runwayDepartureTimes = [(SFFlightLeg *)self runwayDepartureTimes];
  v34 = v32 ^ [runwayDepartureTimes hash];

  return v36 ^ v34;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v20 = 1;
    goto LABEL_144;
  }

  if (![(SFFlightLeg *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v20 = 0;
    goto LABEL_144;
  }

  v5 = equalCopy;
  status = [(SFFlightLeg *)self status];
  status2 = [(SFFlightLeg *)v5 status];
  v237 = status;
  if (status != status2 || ([(SFFlightLeg *)self departurePublishedTime], v197 = objc_claimAutoreleasedReturnValue(), [(SFFlightLeg *)v5 departurePublishedTime], v196 = objc_claimAutoreleasedReturnValue(), (v197 != 0) == (v196 == 0)))
  {
    v229 = 0;
    memset(v226, 0, sizeof(v226));
    v227 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    memset(v235, 0, sizeof(v235));
    v223 = 0;
    v14 = 0;
    v221 = 0;
    v243 = 0;
    v219 = 0;
    v215 = 0;
    v220 = 0;
    v242 = 0;
    v209 = 0;
    v217 = 0;
    v241 = 0;
    v204 = 0;
    v213 = 0;
    v240 = 0;
    v202 = 0;
    v211 = 0;
    v239 = 0;
    v200 = 0;
    v207 = 0;
    v238 = 0;
    v198 = 0;
    v205 = 0;
    v234 = 0;
    v199 = 0;
    v206 = 0;
    v233 = 0;
    v201 = 0;
    v210 = 0;
    v232 = 0;
    v203 = 0;
    v212 = 0;
    v231 = 0;
    v208 = 0;
    v216 = 0;
    v230 = 0;
    v214 = 0;
    v218 = 0;
    v222 = 0;
    v224 = 0;
    v228 = 0;
    v225 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_11;
  }

  departurePublishedTime = [(SFFlightLeg *)self departurePublishedTime];
  v9 = departurePublishedTime != 0;
  v194 = departurePublishedTime;
  if (departurePublishedTime)
  {
    departurePublishedTime2 = [(SFFlightLeg *)self departurePublishedTime];
    [(SFFlightLeg *)v5 departurePublishedTime];
    v190 = v191 = departurePublishedTime2;
    if (![departurePublishedTime2 isEqual:?])
    {
      memset(v226, 0, sizeof(v226));
      v227 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v223 = 0;
      v14 = 0;
      memset(v235, 0, 20);
      v221 = 0;
      v243 = 0;
      v219 = 0;
      v215 = 0;
      v220 = 0;
      v242 = 0;
      v209 = 0;
      v217 = 0;
      v241 = 0;
      v204 = 0;
      v213 = 0;
      v240 = 0;
      v202 = 0;
      v211 = 0;
      v239 = 0;
      v200 = 0;
      v207 = 0;
      v238 = 0;
      v198 = 0;
      v205 = 0;
      v234 = 0;
      v199 = 0;
      v206 = 0;
      v233 = 0;
      v201 = 0;
      v210 = 0;
      v232 = 0;
      v203 = 0;
      v212 = 0;
      v231 = 0;
      v208 = 0;
      v216 = 0;
      v230 = 0;
      v214 = 0;
      v218 = 0;
      v222 = 0;
      v224 = 0;
      v228 = 0;
      v225 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v229 = 1;
      HIDWORD(v235[2]) = 1;
      goto LABEL_11;
    }
  }

  departureActualTime = [(SFFlightLeg *)self departureActualTime];
  departureActualTime2 = [(SFFlightLeg *)v5 departureActualTime];
  HIDWORD(v235[2]) = v9;
  if ((departureActualTime != 0) == (departureActualTime2 == 0))
  {
    v227 = 0;
    *&v226[4] = 0;
    v11 = 0;
    *v226 = 0;
    v12 = 0;
    v13 = 0;
    v223 = 0;
    v14 = 0;
    memset(v235, 0, 20);
    v221 = 0;
    v243 = 0;
    v219 = 0;
    v215 = 0;
    v220 = 0;
    v242 = 0;
    v209 = 0;
    v217 = 0;
    v241 = 0;
    v204 = 0;
    v213 = 0;
    v240 = 0;
    v202 = 0;
    v211 = 0;
    v239 = 0;
    v200 = 0;
    v207 = 0;
    v238 = 0;
    v198 = 0;
    v205 = 0;
    v234 = 0;
    v199 = 0;
    v206 = 0;
    v233 = 0;
    v201 = 0;
    v210 = 0;
    v232 = 0;
    v203 = 0;
    v212 = 0;
    v231 = 0;
    v208 = 0;
    v216 = 0;
    v230 = 0;
    v214 = 0;
    v218 = 0;
    v222 = 0;
    v224 = 0;
    v228 = 0;
    v225 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v229 = 1;
    *&v226[12] = 1;
    goto LABEL_11;
  }

  departureActualTime3 = [(SFFlightLeg *)self departureActualTime];
  v34 = departureActualTime3 != 0;
  v189 = departureActualTime3;
  if (departureActualTime3)
  {
    departureActualTime4 = [(SFFlightLeg *)self departureActualTime];
    [(SFFlightLeg *)v5 departureActualTime];
    v185 = v186 = departureActualTime4;
    if (![departureActualTime4 isEqual:?])
    {
      *&v226[4] = 0;
      v235[1] = 0;
      v11 = 0;
      *v226 = 0;
      v12 = 0;
      v13 = 0;
      v235[0] = 0;
      v223 = 0;
      v14 = 0;
      v221 = 0;
      v243 = 0;
      v219 = 0;
      v215 = 0;
      v220 = 0;
      v242 = 0;
      v209 = 0;
      v217 = 0;
      v241 = 0;
      v204 = 0;
      v213 = 0;
      v240 = 0;
      v202 = 0;
      v211 = 0;
      v239 = 0;
      v200 = 0;
      v207 = 0;
      v238 = 0;
      v198 = 0;
      v205 = 0;
      v234 = 0;
      v199 = 0;
      v206 = 0;
      v233 = 0;
      v201 = 0;
      v210 = 0;
      v232 = 0;
      v203 = 0;
      v212 = 0;
      v231 = 0;
      v208 = 0;
      v216 = 0;
      v230 = 0;
      v214 = 0;
      v218 = 0;
      v222 = 0;
      v224 = 0;
      v228 = 0;
      v225 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v229 = 1;
      *&v226[12] = 1;
      *&v226[16] = 0;
      v227 = 1;
      LODWORD(v235[2]) = 1;
      goto LABEL_11;
    }

    LODWORD(v235[2]) = v34;
  }

  else
  {
    LODWORD(v235[2]) = 0;
  }

  departureTerminal = [(SFFlightLeg *)self departureTerminal];
  departureTerminal2 = [(SFFlightLeg *)v5 departureTerminal];
  if ((departureTerminal != 0) == (departureTerminal2 == 0))
  {
    *&v226[8] = 0x100000000;
    v235[1] = 0;
    v11 = 0;
    *v226 = 0x100000000;
    v12 = 0;
    v13 = 0;
    v235[0] = 0;
    v223 = 0;
    v14 = 0;
    v221 = 0;
    v243 = 0;
    v219 = 0;
    v215 = 0;
    v220 = 0;
    v242 = 0;
    v209 = 0;
    v217 = 0;
    v241 = 0;
    v204 = 0;
    v213 = 0;
    v240 = 0;
    v202 = 0;
    v211 = 0;
    v239 = 0;
    v200 = 0;
    v207 = 0;
    v238 = 0;
    v198 = 0;
    v205 = 0;
    v234 = 0;
    v199 = 0;
    v206 = 0;
    v233 = 0;
    v201 = 0;
    v210 = 0;
    v232 = 0;
    v203 = 0;
    v212 = 0;
    v231 = 0;
    v208 = 0;
    v216 = 0;
    v230 = 0;
    v214 = 0;
    v218 = 0;
    v222 = 0;
    v224 = 0;
    v228 = 0;
    v225 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v229 = 1;
    *&v226[16] = 0;
    v227 = 1;
    goto LABEL_11;
  }

  departureTerminal3 = [(SFFlightLeg *)self departureTerminal];
  v37 = departureTerminal3 != 0;
  v184 = departureTerminal3;
  if (departureTerminal3)
  {
    departureTerminal4 = [(SFFlightLeg *)self departureTerminal];
    [(SFFlightLeg *)v5 departureTerminal];
    v180 = v181 = departureTerminal4;
    if (![departureTerminal4 isEqual:?])
    {
      v11 = 0;
      *v226 = 0x100000000;
      *(v235 + 4) = 0;
      v12 = 0;
      v13 = 0;
      v223 = 0;
      v14 = 0;
      LODWORD(v235[0]) = 0;
      v221 = 0;
      v243 = 0;
      v219 = 0;
      v215 = 0;
      v220 = 0;
      v242 = 0;
      v209 = 0;
      v217 = 0;
      v241 = 0;
      v204 = 0;
      v213 = 0;
      v240 = 0;
      v202 = 0;
      v211 = 0;
      v239 = 0;
      v200 = 0;
      v207 = 0;
      v238 = 0;
      v198 = 0;
      v205 = 0;
      v234 = 0;
      v199 = 0;
      v206 = 0;
      v233 = 0;
      v201 = 0;
      v210 = 0;
      v232 = 0;
      v203 = 0;
      v212 = 0;
      v231 = 0;
      v208 = 0;
      v216 = 0;
      v230 = 0;
      v214 = 0;
      v218 = 0;
      v222 = 0;
      v224 = 0;
      v228 = 0;
      v225 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v229 = 1;
      *&v226[16] = 0;
      v227 = 1;
      *&v226[8] = 0x100000001;
      HIDWORD(v235[1]) = 1;
      goto LABEL_11;
    }

    HIDWORD(v235[1]) = v37;
  }

  else
  {
    HIDWORD(v235[1]) = 0;
  }

  departureGate = [(SFFlightLeg *)self departureGate];
  departureGate2 = [(SFFlightLeg *)v5 departureGate];
  if ((departureGate != 0) == (departureGate2 == 0))
  {
    *v226 = 0;
    *(v235 + 4) = 0;
    v12 = 0;
    v13 = 0;
    v223 = 0;
    v14 = 0;
    LODWORD(v235[0]) = 0;
    v221 = 0;
    v243 = 0;
    v219 = 0;
    v215 = 0;
    v220 = 0;
    v242 = 0;
    v209 = 0;
    v217 = 0;
    v241 = 0;
    v204 = 0;
    v213 = 0;
    v240 = 0;
    v202 = 0;
    v211 = 0;
    v239 = 0;
    v200 = 0;
    v207 = 0;
    v238 = 0;
    v198 = 0;
    v205 = 0;
    v234 = 0;
    v199 = 0;
    v206 = 0;
    v233 = 0;
    v201 = 0;
    v210 = 0;
    v232 = 0;
    v203 = 0;
    v212 = 0;
    v231 = 0;
    v208 = 0;
    v216 = 0;
    v230 = 0;
    v214 = 0;
    v218 = 0;
    v222 = 0;
    v224 = 0;
    v228 = 0;
    v225 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v229 = 1;
    *&v226[12] = 1;
    v227 = 1;
    *&v226[4] = 1;
    *&v226[8] = 1;
    v11 = 1;
    goto LABEL_11;
  }

  departureGate3 = [(SFFlightLeg *)self departureGate];
  v40 = departureGate3 != 0;
  v179 = departureGate3;
  if (departureGate3)
  {
    departureGate4 = [(SFFlightLeg *)self departureGate];
    [(SFFlightLeg *)v5 departureGate];
    v175 = v176 = departureGate4;
    if (![departureGate4 isEqual:?])
    {
      v12 = 0;
      v13 = 0;
      v235[0] = 0;
      v223 = 0;
      v14 = 0;
      v221 = 0;
      v243 = 0;
      v219 = 0;
      v215 = 0;
      v220 = 0;
      v242 = 0;
      v209 = 0;
      v217 = 0;
      v241 = 0;
      v204 = 0;
      v213 = 0;
      v240 = 0;
      v202 = 0;
      v211 = 0;
      v239 = 0;
      v200 = 0;
      v207 = 0;
      v238 = 0;
      v198 = 0;
      v205 = 0;
      v234 = 0;
      v199 = 0;
      v206 = 0;
      v233 = 0;
      v201 = 0;
      v210 = 0;
      v232 = 0;
      v203 = 0;
      v212 = 0;
      v231 = 0;
      v208 = 0;
      v216 = 0;
      v230 = 0;
      v214 = 0;
      v218 = 0;
      v222 = 0;
      v224 = 0;
      v228 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v229 = 1;
      *&v226[16] = 0;
      v227 = 1;
      *&v226[8] = 0x100000001;
      v11 = 1;
      v225 = 0;
      *v226 = 0x100000001;
      LODWORD(v235[1]) = 1;
      goto LABEL_11;
    }

    LODWORD(v235[1]) = v40;
  }

  else
  {
    LODWORD(v235[1]) = 0;
  }

  departureAirport = [(SFFlightLeg *)self departureAirport];
  departureAirport2 = [(SFFlightLeg *)v5 departureAirport];
  if ((departureAirport != 0) == (departureAirport2 == 0))
  {
    v13 = 0;
    v235[0] = 0;
    v223 = 0;
    v14 = 0;
    v221 = 0;
    v243 = 0;
    v219 = 0;
    v215 = 0;
    v220 = 0;
    v242 = 0;
    v209 = 0;
    v217 = 0;
    v241 = 0;
    v204 = 0;
    v213 = 0;
    v240 = 0;
    v202 = 0;
    v211 = 0;
    v239 = 0;
    v200 = 0;
    v207 = 0;
    v238 = 0;
    v198 = 0;
    v205 = 0;
    v234 = 0;
    v199 = 0;
    v206 = 0;
    v233 = 0;
    v201 = 0;
    v210 = 0;
    v232 = 0;
    v203 = 0;
    v212 = 0;
    v231 = 0;
    v208 = 0;
    v216 = 0;
    v230 = 0;
    v214 = 0;
    v218 = 0;
    v222 = 0;
    v224 = 0;
    v228 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v229 = 1;
    *&v226[12] = 1;
    v227 = 1;
    *&v226[4] = 1;
    *&v226[8] = 1;
    v11 = 1;
    v225 = 0;
    *v226 = 1;
    v12 = 1;
    goto LABEL_11;
  }

  departureAirport3 = [(SFFlightLeg *)self departureAirport];
  v43 = departureAirport3 != 0;
  v174 = departureAirport3;
  if (departureAirport3)
  {
    departureAirport4 = [(SFFlightLeg *)self departureAirport];
    [(SFFlightLeg *)v5 departureAirport];
    v170 = v171 = departureAirport4;
    if (![departureAirport4 isEqual:?])
    {
      v223 = 0;
      v14 = 0;
      v235[0] = 0x100000000;
      v221 = 0;
      v243 = 0;
      v219 = 0;
      v215 = 0;
      v220 = 0;
      v242 = 0;
      v209 = 0;
      v217 = 0;
      v241 = 0;
      v204 = 0;
      v213 = 0;
      v240 = 0;
      v202 = 0;
      v211 = 0;
      v239 = 0;
      v200 = 0;
      v207 = 0;
      v238 = 0;
      v198 = 0;
      v205 = 0;
      v234 = 0;
      v199 = 0;
      v206 = 0;
      v233 = 0;
      v201 = 0;
      v210 = 0;
      v232 = 0;
      v203 = 0;
      v212 = 0;
      v231 = 0;
      v208 = 0;
      v216 = 0;
      v230 = 0;
      v214 = 0;
      v218 = 0;
      v222 = 0;
      v224 = 0;
      v228 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v229 = 1;
      *&v226[16] = 0;
      v227 = 1;
      *&v226[8] = 0x100000001;
      v11 = 1;
      v225 = 0;
      *v226 = 0x100000001;
      v12 = 1;
      v13 = 1;
      goto LABEL_11;
    }

    HIDWORD(v235[0]) = v43;
  }

  else
  {
    HIDWORD(v235[0]) = 0;
  }

  arrivalPublishedTime = [(SFFlightLeg *)self arrivalPublishedTime];
  arrivalPublishedTime2 = [(SFFlightLeg *)v5 arrivalPublishedTime];
  if ((arrivalPublishedTime != 0) == (arrivalPublishedTime2 == 0))
  {
    v14 = 0;
    LODWORD(v235[0]) = 0;
    v221 = 0;
    v223 = 0x100000000;
    v243 = 0;
    v219 = 0;
    v215 = 0;
    v220 = 0;
    v242 = 0;
    v209 = 0;
    v217 = 0;
    v241 = 0;
    v204 = 0;
    v213 = 0;
    v240 = 0;
    v202 = 0;
    v211 = 0;
    v239 = 0;
    v200 = 0;
    v207 = 0;
    v238 = 0;
    v198 = 0;
    v205 = 0;
    v234 = 0;
    v199 = 0;
    v206 = 0;
    v233 = 0;
    v201 = 0;
    v210 = 0;
    v232 = 0;
    v203 = 0;
    v212 = 0;
    v231 = 0;
    v208 = 0;
    v216 = 0;
    v230 = 0;
    v214 = 0;
    v218 = 0;
    v222 = 0;
    v224 = 0;
    v228 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v229 = 1;
    *&v226[16] = 0;
    v227 = 1;
    *&v226[8] = 0x100000001;
    v11 = 1;
    v225 = 0;
    *v226 = 0x100000001;
    v12 = 1;
    v13 = 1;
    goto LABEL_11;
  }

  arrivalPublishedTime3 = [(SFFlightLeg *)self arrivalPublishedTime];
  v46 = arrivalPublishedTime3 != 0;
  v169 = arrivalPublishedTime3;
  if (arrivalPublishedTime3)
  {
    arrivalPublishedTime4 = [(SFFlightLeg *)self arrivalPublishedTime];
    [(SFFlightLeg *)v5 arrivalPublishedTime];
    v165 = v166 = arrivalPublishedTime4;
    if (![arrivalPublishedTime4 isEqual:?])
    {
      v221 = 0;
      v223 = 0x100000000;
      v243 = 0;
      v219 = 0;
      v215 = 0;
      v220 = 0;
      v242 = 0;
      v209 = 0;
      v217 = 0;
      v241 = 0;
      v204 = 0;
      v213 = 0;
      v240 = 0;
      v202 = 0;
      v211 = 0;
      v239 = 0;
      v200 = 0;
      v207 = 0;
      v238 = 0;
      v198 = 0;
      v205 = 0;
      v234 = 0;
      v199 = 0;
      v206 = 0;
      v233 = 0;
      v201 = 0;
      v210 = 0;
      v232 = 0;
      v203 = 0;
      v212 = 0;
      v231 = 0;
      v208 = 0;
      v216 = 0;
      v230 = 0;
      v214 = 0;
      v218 = 0;
      v222 = 0;
      v224 = 0;
      v228 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v229 = 1;
      *&v226[16] = 0;
      v227 = 1;
      *&v226[8] = 0x100000001;
      v11 = 1;
      v225 = 0;
      *v226 = 0x100000001;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      LODWORD(v235[0]) = 1;
      goto LABEL_11;
    }

    LODWORD(v235[0]) = v46;
  }

  else
  {
    LODWORD(v235[0]) = 0;
  }

  arrivalActualTime = [(SFFlightLeg *)self arrivalActualTime];
  arrivalActualTime2 = [(SFFlightLeg *)v5 arrivalActualTime];
  if ((arrivalActualTime != 0) == (arrivalActualTime2 == 0))
  {
    v223 = 0x100000000;
    v243 = 0;
    v219 = 0;
    v215 = 0;
    v220 = 0;
    v242 = 0;
    v209 = 0;
    v217 = 0;
    v241 = 0;
    v204 = 0;
    v213 = 0;
    v240 = 0;
    v202 = 0;
    v211 = 0;
    v239 = 0;
    v200 = 0;
    v207 = 0;
    v238 = 0;
    v198 = 0;
    v205 = 0;
    v234 = 0;
    v199 = 0;
    v206 = 0;
    v233 = 0;
    v201 = 0;
    v210 = 0;
    v232 = 0;
    v203 = 0;
    v212 = 0;
    v231 = 0;
    v208 = 0;
    v216 = 0;
    v230 = 0;
    v214 = 0;
    v218 = 0;
    v222 = 0;
    v224 = 0;
    v228 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v229 = 1;
    *&v226[16] = 0;
    v227 = 1;
    *&v226[8] = 0x100000001;
    v11 = 1;
    v225 = 0;
    *v226 = 0x100000001;
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v221 = 1;
  }

  else
  {
    arrivalActualTime3 = [(SFFlightLeg *)self arrivalActualTime];
    HIDWORD(v243) = arrivalActualTime3 != 0;
    v164 = arrivalActualTime3;
    if (!arrivalActualTime3 || (-[SFFlightLeg arrivalActualTime](self, "arrivalActualTime"), v49 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg arrivalActualTime](v5, "arrivalActualTime"), v161 = v49, v160 = objc_claimAutoreleasedReturnValue(), [v49 isEqual:?]))
    {
      arrivalTerminal = [(SFFlightLeg *)self arrivalTerminal];
      arrivalTerminal2 = [(SFFlightLeg *)v5 arrivalTerminal];
      if ((arrivalTerminal != 0) == (arrivalTerminal2 == 0))
      {
        LODWORD(v243) = 0;
        v215 = 0;
        v220 = 0;
        v242 = 0;
        v209 = 0;
        v217 = 0;
        v241 = 0;
        v204 = 0;
        v213 = 0;
        v240 = 0;
        v202 = 0;
        v211 = 0;
        v239 = 0;
        v200 = 0;
        v207 = 0;
        v238 = 0;
        v198 = 0;
        v205 = 0;
        v234 = 0;
        v199 = 0;
        v206 = 0;
        v233 = 0;
        v201 = 0;
        v210 = 0;
        v232 = 0;
        v203 = 0;
        v212 = 0;
        v231 = 0;
        v208 = 0;
        v216 = 0;
        v230 = 0;
        v214 = 0;
        v218 = 0;
        v222 = 0;
        v224 = 0;
        v228 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v229 = 1;
        *&v226[16] = 0;
        v227 = 1;
        *&v226[8] = 0x100000001;
        v11 = 1;
        v225 = 0;
        *v226 = 0x100000001;
        v12 = 1;
        v13 = 1;
        v223 = 0x100000001;
        v14 = 1;
        v221 = 1;
        v219 = 1;
      }

      else
      {
        arrivalTerminal3 = [(SFFlightLeg *)self arrivalTerminal];
        LODWORD(v243) = arrivalTerminal3 != 0;
        v159 = arrivalTerminal3;
        if (!arrivalTerminal3 || (-[SFFlightLeg arrivalTerminal](self, "arrivalTerminal"), v51 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg arrivalTerminal](v5, "arrivalTerminal"), v156 = v51, v155 = objc_claimAutoreleasedReturnValue(), [v51 isEqual:?]))
        {
          arrivalGate = [(SFFlightLeg *)self arrivalGate];
          arrivalGate2 = [(SFFlightLeg *)v5 arrivalGate];
          if ((arrivalGate != 0) == (arrivalGate2 == 0))
          {
            v220 = 0;
            v242 = 0;
            v209 = 0;
            v217 = 0;
            v241 = 0;
            v204 = 0;
            v213 = 0;
            v240 = 0;
            v202 = 0;
            v211 = 0;
            v239 = 0;
            v200 = 0;
            v207 = 0;
            v238 = 0;
            v198 = 0;
            v205 = 0;
            v234 = 0;
            v199 = 0;
            v206 = 0;
            v233 = 0;
            v201 = 0;
            v210 = 0;
            v232 = 0;
            v203 = 0;
            v212 = 0;
            v231 = 0;
            v208 = 0;
            v216 = 0;
            v230 = 0;
            v214 = 0;
            v218 = 0;
            v222 = 0;
            v224 = 0;
            v228 = 0;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v229 = 1;
            *&v226[16] = 0;
            v227 = 1;
            *&v226[8] = 0x100000001;
            v11 = 1;
            v225 = 0;
            *v226 = 0x100000001;
            v12 = 1;
            v13 = 1;
            v223 = 0x100000001;
            v14 = 1;
            v221 = 0x100000001;
            v219 = 1;
            v215 = 1;
          }

          else
          {
            arrivalGate3 = [(SFFlightLeg *)self arrivalGate];
            v242 = arrivalGate3 != 0;
            v154 = arrivalGate3;
            if (!arrivalGate3 || (-[SFFlightLeg arrivalGate](self, "arrivalGate"), v53 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg arrivalGate](v5, "arrivalGate"), v151 = v53, v150 = objc_claimAutoreleasedReturnValue(), [v53 isEqual:?]))
            {
              arrivalAirport = [(SFFlightLeg *)self arrivalAirport];
              arrivalAirport2 = [(SFFlightLeg *)v5 arrivalAirport];
              if ((arrivalAirport != 0) == (arrivalAirport2 == 0))
              {
                v217 = 0;
                v241 = 0;
                v204 = 0;
                v213 = 0;
                v240 = 0;
                v202 = 0;
                v211 = 0;
                v239 = 0;
                v200 = 0;
                v207 = 0;
                v238 = 0;
                v198 = 0;
                v205 = 0;
                v234 = 0;
                v199 = 0;
                v206 = 0;
                v233 = 0;
                v201 = 0;
                v210 = 0;
                v232 = 0;
                v203 = 0;
                v212 = 0;
                v231 = 0;
                v208 = 0;
                v216 = 0;
                v230 = 0;
                v214 = 0;
                v218 = 0;
                v222 = 0;
                v224 = 0;
                v228 = 0;
                v15 = 0;
                v16 = 0;
                v17 = 0;
                v18 = 0;
                v19 = 0;
                v20 = 0;
                v229 = 1;
                *&v226[16] = 0;
                v227 = 1;
                *&v226[8] = 0x100000001;
                v11 = 1;
                v225 = 0;
                *v226 = 0x100000001;
                v12 = 1;
                v13 = 1;
                v223 = 0x100000001;
                v14 = 1;
                v221 = 0x100000001;
                v219 = 1;
                v215 = 1;
                v220 = 1;
                v209 = 1;
              }

              else
              {
                arrivalAirport3 = [(SFFlightLeg *)self arrivalAirport];
                v241 = arrivalAirport3 != 0;
                v149 = arrivalAirport3;
                if (!arrivalAirport3 || (-[SFFlightLeg arrivalAirport](self, "arrivalAirport"), v55 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg arrivalAirport](v5, "arrivalAirport"), v145 = objc_claimAutoreleasedReturnValue(), v146 = v55, [v55 isEqual:?]))
                {
                  divertedAirport = [(SFFlightLeg *)self divertedAirport];
                  divertedAirport2 = [(SFFlightLeg *)v5 divertedAirport];
                  if ((divertedAirport != 0) == (divertedAirport2 == 0))
                  {
                    v213 = 0;
                    v240 = 0;
                    v202 = 0;
                    v211 = 0;
                    v239 = 0;
                    v200 = 0;
                    v207 = 0;
                    v238 = 0;
                    v198 = 0;
                    v205 = 0;
                    v234 = 0;
                    v199 = 0;
                    v206 = 0;
                    v233 = 0;
                    v201 = 0;
                    v210 = 0;
                    v232 = 0;
                    v203 = 0;
                    v212 = 0;
                    v231 = 0;
                    v208 = 0;
                    v216 = 0;
                    v230 = 0;
                    v214 = 0;
                    v218 = 0;
                    v222 = 0;
                    v224 = 0;
                    v228 = 0;
                    v15 = 0;
                    v16 = 0;
                    v17 = 0;
                    v18 = 0;
                    v19 = 0;
                    v20 = 0;
                    v229 = 1;
                    *&v226[16] = 0;
                    v227 = 1;
                    *&v226[8] = 0x100000001;
                    v11 = 1;
                    v225 = 0;
                    *v226 = 0x100000001;
                    v12 = 1;
                    v13 = 1;
                    v223 = 0x100000001;
                    v14 = 1;
                    v221 = 0x100000001;
                    v219 = 1;
                    v215 = 1;
                    v220 = 1;
                    v209 = 1;
                    v217 = 1;
                    v204 = 1;
                  }

                  else
                  {
                    divertedAirport3 = [(SFFlightLeg *)self divertedAirport];
                    v240 = divertedAirport3 != 0;
                    v144 = divertedAirport3;
                    if (!divertedAirport3 || (-[SFFlightLeg divertedAirport](self, "divertedAirport"), v57 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg divertedAirport](v5, "divertedAirport"), v140 = objc_claimAutoreleasedReturnValue(), v141 = v57, [v57 isEqual:?]))
                    {
                      title = [(SFFlightLeg *)self title];
                      title2 = [(SFFlightLeg *)v5 title];
                      if ((title != 0) == (title2 == 0))
                      {
                        v211 = 0;
                        v239 = 0;
                        v200 = 0;
                        v207 = 0;
                        v238 = 0;
                        v198 = 0;
                        v205 = 0;
                        v234 = 0;
                        v199 = 0;
                        v206 = 0;
                        v233 = 0;
                        v201 = 0;
                        v210 = 0;
                        v232 = 0;
                        v203 = 0;
                        v212 = 0;
                        v231 = 0;
                        v208 = 0;
                        v216 = 0;
                        v230 = 0;
                        v214 = 0;
                        v218 = 0;
                        v222 = 0;
                        v224 = 0;
                        v228 = 0;
                        v15 = 0;
                        v16 = 0;
                        v17 = 0;
                        v18 = 0;
                        v19 = 0;
                        v20 = 0;
                        v229 = 1;
                        *&v226[16] = 0;
                        v227 = 1;
                        *&v226[8] = 0x100000001;
                        v11 = 1;
                        v225 = 0;
                        *v226 = 0x100000001;
                        v12 = 1;
                        v13 = 1;
                        v223 = 0x100000001;
                        v14 = 1;
                        v221 = 0x100000001;
                        v219 = 1;
                        v215 = 1;
                        v220 = 1;
                        v209 = 1;
                        v217 = 1;
                        v204 = 1;
                        v213 = 1;
                        v202 = 1;
                      }

                      else
                      {
                        title3 = [(SFFlightLeg *)self title];
                        v239 = title3 != 0;
                        v139 = title3;
                        if (!title3 || (-[SFFlightLeg title](self, "title"), v59 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg title](v5, "title"), v135 = objc_claimAutoreleasedReturnValue(), v136 = v59, [v59 isEqual:?]))
                        {
                          baggageClaim = [(SFFlightLeg *)self baggageClaim];
                          baggageClaim2 = [(SFFlightLeg *)v5 baggageClaim];
                          if ((baggageClaim != 0) == (baggageClaim2 == 0))
                          {
                            v207 = 0;
                            v238 = 0;
                            v198 = 0;
                            v205 = 0;
                            v234 = 0;
                            v199 = 0;
                            v206 = 0;
                            v233 = 0;
                            v201 = 0;
                            v210 = 0;
                            v232 = 0;
                            v203 = 0;
                            v212 = 0;
                            v231 = 0;
                            v208 = 0;
                            v216 = 0;
                            v230 = 0;
                            v214 = 0;
                            v218 = 0;
                            v222 = 0;
                            v224 = 0;
                            v228 = 0;
                            v15 = 0;
                            v16 = 0;
                            v17 = 0;
                            v18 = 0;
                            v19 = 0;
                            v20 = 0;
                            v229 = 1;
                            *&v226[16] = 0;
                            v227 = 1;
                            *&v226[8] = 0x100000001;
                            v11 = 1;
                            v225 = 0;
                            *v226 = 0x100000001;
                            v12 = 1;
                            v13 = 1;
                            v223 = 0x100000001;
                            v14 = 1;
                            v221 = 0x100000001;
                            v219 = 1;
                            v215 = 1;
                            v220 = 1;
                            v209 = 1;
                            v217 = 1;
                            v204 = 1;
                            v213 = 1;
                            v202 = 1;
                            v211 = 1;
                            v200 = 1;
                          }

                          else
                          {
                            baggageClaim3 = [(SFFlightLeg *)self baggageClaim];
                            v238 = baggageClaim3 != 0;
                            v134 = baggageClaim3;
                            if (!baggageClaim3 || (-[SFFlightLeg baggageClaim](self, "baggageClaim"), v61 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg baggageClaim](v5, "baggageClaim"), v130 = objc_claimAutoreleasedReturnValue(), v131 = v61, [v61 isEqual:?]))
                            {
                              departureGateClosedTime = [(SFFlightLeg *)self departureGateClosedTime];
                              departureGateClosedTime2 = [(SFFlightLeg *)v5 departureGateClosedTime];
                              if ((departureGateClosedTime != 0) == (departureGateClosedTime2 == 0))
                              {
                                v205 = 0;
                                v234 = 0;
                                v199 = 0;
                                v206 = 0;
                                v233 = 0;
                                v201 = 0;
                                v210 = 0;
                                v232 = 0;
                                v203 = 0;
                                v212 = 0;
                                v231 = 0;
                                v208 = 0;
                                v216 = 0;
                                v230 = 0;
                                v214 = 0;
                                v218 = 0;
                                v222 = 0;
                                v224 = 0;
                                v228 = 0;
                                v15 = 0;
                                v16 = 0;
                                v17 = 0;
                                v18 = 0;
                                v19 = 0;
                                v20 = 0;
                                v229 = 1;
                                *&v226[16] = 0;
                                v227 = 1;
                                *&v226[8] = 0x100000001;
                                v11 = 1;
                                v225 = 0;
                                *v226 = 0x100000001;
                                v12 = 1;
                                v13 = 1;
                                v223 = 0x100000001;
                                v14 = 1;
                                v221 = 0x100000001;
                                v219 = 1;
                                v215 = 1;
                                v220 = 1;
                                v209 = 1;
                                v217 = 1;
                                v204 = 1;
                                v213 = 1;
                                v202 = 1;
                                v211 = 1;
                                v200 = 1;
                                v207 = 1;
                                v198 = 1;
                              }

                              else
                              {
                                departureGateClosedTime3 = [(SFFlightLeg *)self departureGateClosedTime];
                                v234 = departureGateClosedTime3 != 0;
                                v129 = departureGateClosedTime3;
                                if (!departureGateClosedTime3 || (-[SFFlightLeg departureGateClosedTime](self, "departureGateClosedTime"), v63 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg departureGateClosedTime](v5, "departureGateClosedTime"), v127 = objc_claimAutoreleasedReturnValue(), v128 = v63, [v63 isEqual:?]))
                                {
                                  departureRunwayTime = [(SFFlightLeg *)self departureRunwayTime];
                                  departureRunwayTime2 = [(SFFlightLeg *)v5 departureRunwayTime];
                                  if ((departureRunwayTime != 0) == (departureRunwayTime2 == 0))
                                  {
                                    v206 = 0;
                                    v233 = 0;
                                    v201 = 0;
                                    v210 = 0;
                                    v232 = 0;
                                    v203 = 0;
                                    v212 = 0;
                                    v231 = 0;
                                    v208 = 0;
                                    v216 = 0;
                                    v230 = 0;
                                    v214 = 0;
                                    v218 = 0;
                                    v222 = 0;
                                    v224 = 0;
                                    v228 = 0;
                                    v15 = 0;
                                    v16 = 0;
                                    v17 = 0;
                                    v18 = 0;
                                    v19 = 0;
                                    v20 = 0;
                                    v229 = 1;
                                    *&v226[16] = 0;
                                    v227 = 1;
                                    *&v226[8] = 0x100000001;
                                    v11 = 1;
                                    v225 = 0;
                                    *v226 = 0x100000001;
                                    v12 = 1;
                                    v13 = 1;
                                    v223 = 0x100000001;
                                    v14 = 1;
                                    v221 = 0x100000001;
                                    v219 = 1;
                                    v215 = 1;
                                    v220 = 1;
                                    v209 = 1;
                                    v217 = 1;
                                    v204 = 1;
                                    v213 = 1;
                                    v202 = 1;
                                    v211 = 1;
                                    v200 = 1;
                                    v207 = 1;
                                    v198 = 1;
                                    v205 = 1;
                                    v199 = 1;
                                  }

                                  else
                                  {
                                    departureRunwayTime3 = [(SFFlightLeg *)self departureRunwayTime];
                                    v233 = departureRunwayTime3 != 0;
                                    v124 = departureRunwayTime3;
                                    if (!departureRunwayTime3 || (-[SFFlightLeg departureRunwayTime](self, "departureRunwayTime"), v65 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg departureRunwayTime](v5, "departureRunwayTime"), v122 = objc_claimAutoreleasedReturnValue(), v123 = v65, [v65 isEqual:?]))
                                    {
                                      arrivalRunwayTime = [(SFFlightLeg *)self arrivalRunwayTime];
                                      arrivalRunwayTime2 = [(SFFlightLeg *)v5 arrivalRunwayTime];
                                      if ((arrivalRunwayTime != 0) == (arrivalRunwayTime2 == 0))
                                      {
                                        v210 = 0;
                                        v232 = 0;
                                        v203 = 0;
                                        v212 = 0;
                                        v231 = 0;
                                        v208 = 0;
                                        v216 = 0;
                                        v230 = 0;
                                        v214 = 0;
                                        v218 = 0;
                                        v222 = 0;
                                        v224 = 0;
                                        v228 = 0;
                                        v15 = 0;
                                        v16 = 0;
                                        v17 = 0;
                                        v18 = 0;
                                        v19 = 0;
                                        v20 = 0;
                                        v229 = 1;
                                        *&v226[16] = 0;
                                        v227 = 1;
                                        *&v226[8] = 0x100000001;
                                        v11 = 1;
                                        v225 = 0;
                                        *v226 = 0x100000001;
                                        v12 = 1;
                                        v13 = 1;
                                        v223 = 0x100000001;
                                        v14 = 1;
                                        v221 = 0x100000001;
                                        v219 = 1;
                                        v215 = 1;
                                        v220 = 1;
                                        v209 = 1;
                                        v217 = 1;
                                        v204 = 1;
                                        v213 = 1;
                                        v202 = 1;
                                        v211 = 1;
                                        v200 = 1;
                                        v207 = 1;
                                        v198 = 1;
                                        v205 = 1;
                                        v199 = 1;
                                        v206 = 1;
                                        v201 = 1;
                                      }

                                      else
                                      {
                                        arrivalRunwayTime3 = [(SFFlightLeg *)self arrivalRunwayTime];
                                        v232 = arrivalRunwayTime3 != 0;
                                        v119 = arrivalRunwayTime3;
                                        if (!arrivalRunwayTime3 || (-[SFFlightLeg arrivalRunwayTime](self, "arrivalRunwayTime"), v67 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg arrivalRunwayTime](v5, "arrivalRunwayTime"), v117 = objc_claimAutoreleasedReturnValue(), v118 = v67, [v67 isEqual:?]))
                                        {
                                          arrivalGateTime = [(SFFlightLeg *)self arrivalGateTime];
                                          arrivalGateTime2 = [(SFFlightLeg *)v5 arrivalGateTime];
                                          if ((arrivalGateTime != 0) == (arrivalGateTime2 == 0))
                                          {
                                            v212 = 0;
                                            v231 = 0;
                                            v208 = 0;
                                            v216 = 0;
                                            v230 = 0;
                                            v214 = 0;
                                            v218 = 0;
                                            v222 = 0;
                                            v224 = 0;
                                            v228 = 0;
                                            v15 = 0;
                                            v16 = 0;
                                            v17 = 0;
                                            v18 = 0;
                                            v19 = 0;
                                            v20 = 0;
                                            v229 = 1;
                                            *&v226[16] = 0;
                                            v227 = 1;
                                            *&v226[8] = 0x100000001;
                                            v11 = 1;
                                            v225 = 0;
                                            *v226 = 0x100000001;
                                            v12 = 1;
                                            v13 = 1;
                                            v223 = 0x100000001;
                                            v14 = 1;
                                            v221 = 0x100000001;
                                            v219 = 1;
                                            v215 = 1;
                                            v220 = 1;
                                            v209 = 1;
                                            v217 = 1;
                                            v204 = 1;
                                            v213 = 1;
                                            v202 = 1;
                                            v211 = 1;
                                            v200 = 1;
                                            v207 = 1;
                                            v198 = 1;
                                            v205 = 1;
                                            v199 = 1;
                                            v206 = 1;
                                            v201 = 1;
                                            v210 = 1;
                                            v203 = 1;
                                          }

                                          else
                                          {
                                            arrivalGateTime3 = [(SFFlightLeg *)self arrivalGateTime];
                                            v231 = arrivalGateTime3 != 0;
                                            v110 = arrivalGateTime3;
                                            if (!arrivalGateTime3 || (-[SFFlightLeg arrivalGateTime](self, "arrivalGateTime"), v69 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg arrivalGateTime](v5, "arrivalGateTime"), v115 = objc_claimAutoreleasedReturnValue(), v116 = v69, [v69 isEqual:?]))
                                            {
                                              lastUpdatedTime = [(SFFlightLeg *)self lastUpdatedTime];
                                              lastUpdatedTime2 = [(SFFlightLeg *)v5 lastUpdatedTime];
                                              if ((lastUpdatedTime != 0) == (lastUpdatedTime2 == 0))
                                              {
                                                v216 = 0;
                                                v230 = 0;
                                                v214 = 0;
                                                v218 = 0;
                                                v222 = 0;
                                                v224 = 0;
                                                v228 = 0;
                                                v15 = 0;
                                                v16 = 0;
                                                v17 = 0;
                                                v18 = 0;
                                                v19 = 0;
                                                v20 = 0;
                                                v229 = 1;
                                                *&v226[16] = 0;
                                                v227 = 1;
                                                *&v226[8] = 0x100000001;
                                                v11 = 1;
                                                v225 = 0;
                                                *v226 = 0x100000001;
                                                v12 = 1;
                                                v13 = 1;
                                                v223 = 0x100000001;
                                                v14 = 1;
                                                v221 = 0x100000001;
                                                v219 = 1;
                                                v215 = 1;
                                                v220 = 1;
                                                v209 = 1;
                                                v217 = 1;
                                                v204 = 1;
                                                v213 = 1;
                                                v202 = 1;
                                                v211 = 1;
                                                v200 = 1;
                                                v207 = 1;
                                                v198 = 1;
                                                v205 = 1;
                                                v199 = 1;
                                                v206 = 1;
                                                v201 = 1;
                                                v210 = 1;
                                                v203 = 1;
                                                v212 = 1;
                                                v208 = 1;
                                              }

                                              else
                                              {
                                                lastUpdatedTime3 = [(SFFlightLeg *)self lastUpdatedTime];
                                                v230 = lastUpdatedTime3 != 0;
                                                v105 = lastUpdatedTime3;
                                                if (!lastUpdatedTime3 || (-[SFFlightLeg lastUpdatedTime](self, "lastUpdatedTime"), v71 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg lastUpdatedTime](v5, "lastUpdatedTime"), v113 = v71, v111 = objc_claimAutoreleasedReturnValue(), [v71 isEqual:?]))
                                                {
                                                  pegasusDisplayFields = [(SFFlightLeg *)self pegasusDisplayFields];
                                                  pegasusDisplayFields2 = [(SFFlightLeg *)v5 pegasusDisplayFields];
                                                  if ((pegasusDisplayFields != 0) == (pegasusDisplayFields2 == 0))
                                                  {
                                                    v218 = 0;
                                                    v222 = 0;
                                                    v224 = 0;
                                                    v228 = 0;
                                                    v15 = 0;
                                                    v16 = 0;
                                                    v17 = 0;
                                                    v18 = 0;
                                                    v19 = 0;
                                                    v20 = 0;
                                                    v229 = 1;
                                                    *&v226[16] = 0;
                                                    v227 = 1;
                                                    *&v226[8] = 0x100000001;
                                                    v11 = 1;
                                                    v225 = 0;
                                                    *v226 = 0x100000001;
                                                    v12 = 1;
                                                    v13 = 1;
                                                    v223 = 0x100000001;
                                                    v14 = 1;
                                                    v221 = 0x100000001;
                                                    v219 = 1;
                                                    v215 = 1;
                                                    v220 = 1;
                                                    v209 = 1;
                                                    v217 = 1;
                                                    v204 = 1;
                                                    v213 = 1;
                                                    v202 = 1;
                                                    v211 = 1;
                                                    v200 = 1;
                                                    v207 = 1;
                                                    v198 = 1;
                                                    v205 = 1;
                                                    v199 = 1;
                                                    v206 = 1;
                                                    v201 = 1;
                                                    v210 = 1;
                                                    v203 = 1;
                                                    v212 = 1;
                                                    v208 = 1;
                                                    v216 = 1;
                                                    v214 = 1;
                                                  }

                                                  else
                                                  {
                                                    pegasusDisplayFields3 = [(SFFlightLeg *)self pegasusDisplayFields];
                                                    HIDWORD(v229) = pegasusDisplayFields3 != 0;
                                                    v100 = pegasusDisplayFields3;
                                                    if (!pegasusDisplayFields3 || (-[SFFlightLeg pegasusDisplayFields](self, "pegasusDisplayFields"), v73 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg pegasusDisplayFields](v5, "pegasusDisplayFields"), v108 = v73, v106 = objc_claimAutoreleasedReturnValue(), [v73 isEqual:?]))
                                                    {
                                                      pegasusDefinedState = [(SFFlightLeg *)self pegasusDefinedState];
                                                      if (pegasusDefinedState == [(SFFlightLeg *)v5 pegasusDefinedState])
                                                      {
                                                        gateArrivalTimes = [(SFFlightLeg *)self gateArrivalTimes];
                                                        gateArrivalTimes2 = [(SFFlightLeg *)v5 gateArrivalTimes];
                                                        if ((gateArrivalTimes != 0) == (gateArrivalTimes2 == 0))
                                                        {
                                                          v224 = 0;
                                                          v228 = 0;
                                                          v15 = 0;
                                                          v16 = 0;
                                                          v17 = 0;
                                                          v18 = 0;
                                                          v19 = 0;
                                                          v20 = 0;
                                                          LODWORD(v229) = 1;
                                                          *&v226[16] = 0;
                                                          v227 = 1;
                                                          *&v226[8] = 0x100000001;
                                                          v11 = 1;
                                                          v225 = 0;
                                                          *v226 = 0x100000001;
                                                          v12 = 1;
                                                          v13 = 1;
                                                          v223 = 0x100000001;
                                                          v14 = 1;
                                                          v221 = 0x100000001;
                                                          v219 = 1;
                                                          v215 = 1;
                                                          v220 = 1;
                                                          v209 = 1;
                                                          v217 = 1;
                                                          v204 = 1;
                                                          v213 = 1;
                                                          v202 = 1;
                                                          v211 = 1;
                                                          v200 = 1;
                                                          v207 = 1;
                                                          v198 = 1;
                                                          v205 = 1;
                                                          v199 = 1;
                                                          v206 = 1;
                                                          v201 = 1;
                                                          v210 = 1;
                                                          v203 = 1;
                                                          v212 = 1;
                                                          v208 = 1;
                                                          v216 = 1;
                                                          v214 = 1;
                                                          v218 = 1;
                                                          v222 = 1;
                                                        }

                                                        else
                                                        {
                                                          gateArrivalTimes3 = [(SFFlightLeg *)self gateArrivalTimes];
                                                          HIDWORD(v228) = gateArrivalTimes3 != 0;
                                                          v95 = gateArrivalTimes3;
                                                          if (!gateArrivalTimes3 || (-[SFFlightLeg gateArrivalTimes](self, "gateArrivalTimes"), v76 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg gateArrivalTimes](v5, "gateArrivalTimes"), v101 = objc_claimAutoreleasedReturnValue(), v102 = v76, [v76 isEqual:?]))
                                                          {
                                                            runwayArrivalTimes = [(SFFlightLeg *)self runwayArrivalTimes];
                                                            runwayArrivalTimes2 = [(SFFlightLeg *)v5 runwayArrivalTimes];
                                                            if ((runwayArrivalTimes != 0) == (runwayArrivalTimes2 == 0))
                                                            {
                                                              v15 = 0;
                                                              v16 = 0;
                                                              v17 = 0;
                                                              v18 = 0;
                                                              v19 = 0;
                                                              v20 = 0;
                                                              LODWORD(v229) = 1;
                                                              *&v226[16] = 0;
                                                              v227 = 1;
                                                              LODWORD(v228) = 0;
                                                              *&v226[8] = 0x100000001;
                                                              v11 = 1;
                                                              v225 = 0;
                                                              *v226 = 0x100000001;
                                                              v12 = 1;
                                                              v13 = 1;
                                                              v223 = 0x100000001;
                                                              v14 = 1;
                                                              v221 = 0x100000001;
                                                              v219 = 1;
                                                              v215 = 1;
                                                              v220 = 1;
                                                              v209 = 1;
                                                              v217 = 1;
                                                              v204 = 1;
                                                              v213 = 1;
                                                              v202 = 1;
                                                              v211 = 1;
                                                              v200 = 1;
                                                              v207 = 1;
                                                              v198 = 1;
                                                              v205 = 1;
                                                              v199 = 1;
                                                              v206 = 1;
                                                              v201 = 1;
                                                              v210 = 1;
                                                              v203 = 1;
                                                              v212 = 1;
                                                              v208 = 1;
                                                              v216 = 1;
                                                              v214 = 1;
                                                              v218 = 1;
                                                              v222 = 1;
                                                              v224 = 0x100000001;
                                                            }

                                                            else
                                                            {
                                                              runwayArrivalTimes3 = [(SFFlightLeg *)self runwayArrivalTimes];
                                                              LODWORD(v228) = runwayArrivalTimes3 != 0;
                                                              v90 = runwayArrivalTimes3;
                                                              if (!runwayArrivalTimes3 || (-[SFFlightLeg runwayArrivalTimes](self, "runwayArrivalTimes"), v78 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg runwayArrivalTimes](v5, "runwayArrivalTimes"), v96 = objc_claimAutoreleasedReturnValue(), v97 = v78, [v78 isEqual:?]))
                                                              {
                                                                gateDepartureTimes = [(SFFlightLeg *)self gateDepartureTimes];
                                                                gateDepartureTimes2 = [(SFFlightLeg *)v5 gateDepartureTimes];
                                                                if ((gateDepartureTimes != 0) == (gateDepartureTimes2 == 0))
                                                                {
                                                                  v16 = 0;
                                                                  v17 = 0;
                                                                  v18 = 0;
                                                                  v19 = 0;
                                                                  v20 = 0;
                                                                  LODWORD(v229) = 1;
                                                                  *&v226[12] = 1;
                                                                  v227 = 1;
                                                                  *&v226[8] = 1;
                                                                  v11 = 1;
                                                                  *v226 = 0x100000001;
                                                                  v12 = 1;
                                                                  v13 = 1;
                                                                  v223 = 0x100000001;
                                                                  v14 = 1;
                                                                  v221 = 0x100000001;
                                                                  v219 = 1;
                                                                  v215 = 1;
                                                                  v220 = 1;
                                                                  v209 = 1;
                                                                  v217 = 1;
                                                                  v204 = 1;
                                                                  v213 = 1;
                                                                  v202 = 1;
                                                                  v211 = 1;
                                                                  v200 = 1;
                                                                  v207 = 1;
                                                                  v198 = 1;
                                                                  v205 = 1;
                                                                  v199 = 1;
                                                                  v206 = 1;
                                                                  v201 = 1;
                                                                  v210 = 1;
                                                                  v203 = 1;
                                                                  v212 = 1;
                                                                  v208 = 1;
                                                                  v216 = 1;
                                                                  v214 = 1;
                                                                  v218 = 1;
                                                                  v222 = 1;
                                                                  v224 = 0x100000001;
                                                                  v225 = 1;
                                                                  v15 = 1;
                                                                }

                                                                else
                                                                {
                                                                  gateDepartureTimes3 = [(SFFlightLeg *)self gateDepartureTimes];
                                                                  *&v226[16] = gateDepartureTimes3 != 0;
                                                                  v86 = gateDepartureTimes3;
                                                                  if (!gateDepartureTimes3 || (-[SFFlightLeg gateDepartureTimes](self, "gateDepartureTimes"), v80 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg gateDepartureTimes](v5, "gateDepartureTimes"), v91 = objc_claimAutoreleasedReturnValue(), v92 = v80, [v80 isEqual:?]))
                                                                  {
                                                                    runwayDepartureTimes = [(SFFlightLeg *)self runwayDepartureTimes];
                                                                    runwayDepartureTimes2 = [(SFFlightLeg *)v5 runwayDepartureTimes];
                                                                    if ((runwayDepartureTimes != 0) == (runwayDepartureTimes2 == 0))
                                                                    {
                                                                      v18 = 0;
                                                                      v19 = 0;
                                                                      v20 = 0;
                                                                      LODWORD(v229) = 1;
                                                                      *&v226[8] = 0x100000001;
                                                                      v227 = 1;
                                                                      *v226 = 0x100000001;
                                                                      v11 = 1;
                                                                      v12 = 1;
                                                                      v13 = 1;
                                                                      v223 = 0x100000001;
                                                                      v14 = 1;
                                                                      v221 = 0x100000001;
                                                                      v219 = 1;
                                                                      v215 = 1;
                                                                      v220 = 1;
                                                                      v209 = 1;
                                                                      v217 = 1;
                                                                      v204 = 1;
                                                                      v213 = 1;
                                                                      v202 = 1;
                                                                      v211 = 1;
                                                                      v200 = 1;
                                                                      v207 = 1;
                                                                      v198 = 1;
                                                                      v205 = 1;
                                                                      v199 = 1;
                                                                      v206 = 1;
                                                                      v201 = 1;
                                                                      v210 = 1;
                                                                      v203 = 1;
                                                                      v212 = 1;
                                                                      v208 = 1;
                                                                      v216 = 1;
                                                                      v214 = 1;
                                                                      v218 = 1;
                                                                      v222 = 1;
                                                                      v224 = 0x100000001;
                                                                      v225 = 1;
                                                                      v15 = 1;
                                                                      v16 = 1;
                                                                      v17 = 1;
                                                                    }

                                                                    else
                                                                    {
                                                                      runwayDepartureTimes3 = [(SFFlightLeg *)self runwayDepartureTimes];
                                                                      if (runwayDepartureTimes3)
                                                                      {
                                                                        runwayDepartureTimes4 = [(SFFlightLeg *)self runwayDepartureTimes];
                                                                        runwayDepartureTimes5 = [(SFFlightLeg *)v5 runwayDepartureTimes];
                                                                        v85 = runwayDepartureTimes4;
                                                                        v20 = [runwayDepartureTimes4 isEqual:runwayDepartureTimes5];
                                                                        v7 = runwayDepartureTimes5;
                                                                        v19 = 1;
                                                                        LODWORD(v229) = 1;
                                                                        *&v226[8] = 0x100000001;
                                                                        v227 = 1;
                                                                        *v226 = 0x100000001;
                                                                        v11 = 1;
                                                                        v12 = 1;
                                                                        v13 = 1;
                                                                        v223 = 0x100000001;
                                                                        v14 = 1;
                                                                        v221 = 0x100000001;
                                                                        v219 = 1;
                                                                        v215 = 1;
                                                                        v220 = 1;
                                                                        v209 = 1;
                                                                        v217 = 1;
                                                                        v204 = 1;
                                                                        v213 = 1;
                                                                        v202 = 1;
                                                                        v211 = 1;
                                                                        v200 = 1;
                                                                        v207 = 1;
                                                                        v198 = 1;
                                                                        v205 = 1;
                                                                        v199 = 1;
                                                                        v206 = 1;
                                                                        v201 = 1;
                                                                        v210 = 1;
                                                                        v203 = 1;
                                                                        v212 = 1;
                                                                        v208 = 1;
                                                                        v216 = 1;
                                                                        v214 = 1;
                                                                        v218 = 1;
                                                                        v222 = 1;
                                                                        v224 = 0x100000001;
                                                                        v225 = 1;
                                                                        v15 = 1;
                                                                        v16 = 1;
                                                                        v17 = 1;
                                                                        v18 = 1;
                                                                      }

                                                                      else
                                                                      {
                                                                        runwayDepartureTimes3 = 0;
                                                                        v19 = 0;
                                                                        LODWORD(v229) = 1;
                                                                        *&v226[8] = 0x100000001;
                                                                        v227 = 1;
                                                                        *v226 = 0x100000001;
                                                                        v11 = 1;
                                                                        v12 = 1;
                                                                        v13 = 1;
                                                                        v223 = 0x100000001;
                                                                        v14 = 1;
                                                                        v221 = 0x100000001;
                                                                        v219 = 1;
                                                                        v215 = 1;
                                                                        v220 = 1;
                                                                        v209 = 1;
                                                                        v217 = 1;
                                                                        v204 = 1;
                                                                        v213 = 1;
                                                                        v202 = 1;
                                                                        v211 = 1;
                                                                        v200 = 1;
                                                                        v207 = 1;
                                                                        v198 = 1;
                                                                        v205 = 1;
                                                                        v199 = 1;
                                                                        v206 = 1;
                                                                        v201 = 1;
                                                                        v210 = 1;
                                                                        v203 = 1;
                                                                        v212 = 1;
                                                                        v208 = 1;
                                                                        v216 = 1;
                                                                        v214 = 1;
                                                                        v218 = 1;
                                                                        v222 = 1;
                                                                        v224 = 0x100000001;
                                                                        v225 = 1;
                                                                        v15 = 1;
                                                                        v16 = 1;
                                                                        v17 = 1;
                                                                        v18 = 1;
                                                                        v20 = 1;
                                                                      }
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v17 = 0;
                                                                    v18 = 0;
                                                                    v19 = 0;
                                                                    v20 = 0;
                                                                    LODWORD(v229) = 1;
                                                                    *&v226[8] = 0x100000001;
                                                                    v227 = 1;
                                                                    *v226 = 0x100000001;
                                                                    v11 = 1;
                                                                    v12 = 1;
                                                                    v13 = 1;
                                                                    v223 = 0x100000001;
                                                                    v14 = 1;
                                                                    v221 = 0x100000001;
                                                                    v219 = 1;
                                                                    v215 = 1;
                                                                    v220 = 1;
                                                                    v209 = 1;
                                                                    v217 = 1;
                                                                    v204 = 1;
                                                                    v213 = 1;
                                                                    v202 = 1;
                                                                    v211 = 1;
                                                                    v200 = 1;
                                                                    v207 = 1;
                                                                    v198 = 1;
                                                                    v205 = 1;
                                                                    v199 = 1;
                                                                    v206 = 1;
                                                                    v201 = 1;
                                                                    v210 = 1;
                                                                    v203 = 1;
                                                                    v212 = 1;
                                                                    v208 = 1;
                                                                    v216 = 1;
                                                                    v214 = 1;
                                                                    v218 = 1;
                                                                    v222 = 1;
                                                                    v224 = 0x100000001;
                                                                    v225 = 1;
                                                                    v15 = 1;
                                                                    v16 = 1;
                                                                    *&v226[16] = 1;
                                                                  }
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v15 = 0;
                                                                v16 = 0;
                                                                v17 = 0;
                                                                v18 = 0;
                                                                v19 = 0;
                                                                v20 = 0;
                                                                LODWORD(v229) = 1;
                                                                *&v226[16] = 0;
                                                                v227 = 1;
                                                                *&v226[8] = 0x100000001;
                                                                v11 = 1;
                                                                *v226 = 0x100000001;
                                                                v12 = 1;
                                                                v13 = 1;
                                                                v223 = 0x100000001;
                                                                v14 = 1;
                                                                v221 = 0x100000001;
                                                                v219 = 1;
                                                                v215 = 1;
                                                                v220 = 1;
                                                                v209 = 1;
                                                                v217 = 1;
                                                                v204 = 1;
                                                                v213 = 1;
                                                                v202 = 1;
                                                                v211 = 1;
                                                                v200 = 1;
                                                                v207 = 1;
                                                                v198 = 1;
                                                                v205 = 1;
                                                                v199 = 1;
                                                                v206 = 1;
                                                                v201 = 1;
                                                                v210 = 1;
                                                                v203 = 1;
                                                                v212 = 1;
                                                                v208 = 1;
                                                                v216 = 1;
                                                                v214 = 1;
                                                                v218 = 1;
                                                                v222 = 1;
                                                                v224 = 0x100000001;
                                                                v225 = 1;
                                                                LODWORD(v228) = 1;
                                                              }
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v15 = 0;
                                                            v16 = 0;
                                                            v17 = 0;
                                                            v18 = 0;
                                                            v19 = 0;
                                                            v20 = 0;
                                                            LODWORD(v229) = 1;
                                                            *&v226[16] = 0;
                                                            v227 = 1;
                                                            v228 = 0x100000000;
                                                            *&v226[8] = 0x100000001;
                                                            v11 = 1;
                                                            v225 = 0;
                                                            *v226 = 0x100000001;
                                                            v12 = 1;
                                                            v13 = 1;
                                                            v224 = 0x100000000;
                                                            v14 = 1;
                                                            v221 = 0x100000001;
                                                            v223 = 0x100000001;
                                                            v219 = 1;
                                                            v215 = 1;
                                                            v220 = 1;
                                                            v209 = 1;
                                                            v217 = 1;
                                                            v204 = 1;
                                                            v213 = 1;
                                                            v202 = 1;
                                                            v211 = 1;
                                                            v200 = 1;
                                                            v207 = 1;
                                                            v198 = 1;
                                                            v205 = 1;
                                                            v199 = 1;
                                                            v206 = 1;
                                                            v201 = 1;
                                                            v210 = 1;
                                                            v203 = 1;
                                                            v212 = 1;
                                                            v208 = 1;
                                                            v216 = 1;
                                                            v214 = 1;
                                                            v218 = 1;
                                                            v222 = 1;
                                                          }
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v222 = 0;
                                                        v224 = 0;
                                                        v228 = 0;
                                                        v15 = 0;
                                                        v16 = 0;
                                                        v17 = 0;
                                                        v18 = 0;
                                                        v19 = 0;
                                                        v20 = 0;
                                                        LODWORD(v229) = 1;
                                                        *&v226[16] = 0;
                                                        v227 = 1;
                                                        *&v226[8] = 0x100000001;
                                                        v11 = 1;
                                                        v225 = 0;
                                                        *v226 = 0x100000001;
                                                        v12 = 1;
                                                        v13 = 1;
                                                        v223 = 0x100000001;
                                                        v14 = 1;
                                                        v221 = 0x100000001;
                                                        v219 = 1;
                                                        v215 = 1;
                                                        v220 = 1;
                                                        v209 = 1;
                                                        v217 = 1;
                                                        v204 = 1;
                                                        v213 = 1;
                                                        v202 = 1;
                                                        v211 = 1;
                                                        v200 = 1;
                                                        v207 = 1;
                                                        v198 = 1;
                                                        v205 = 1;
                                                        v199 = 1;
                                                        v206 = 1;
                                                        v201 = 1;
                                                        v210 = 1;
                                                        v203 = 1;
                                                        v212 = 1;
                                                        v208 = 1;
                                                        v216 = 1;
                                                        v214 = 1;
                                                        v218 = 1;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v222 = 0;
                                                      v224 = 0;
                                                      v228 = 0;
                                                      v15 = 0;
                                                      v16 = 0;
                                                      v17 = 0;
                                                      v18 = 0;
                                                      v19 = 0;
                                                      v20 = 0;
                                                      v229 = 0x100000001;
                                                      *&v226[16] = 0;
                                                      v227 = 1;
                                                      *&v226[8] = 0x100000001;
                                                      v11 = 1;
                                                      v225 = 0;
                                                      *v226 = 0x100000001;
                                                      v12 = 1;
                                                      v13 = 1;
                                                      v223 = 0x100000001;
                                                      v14 = 1;
                                                      v221 = 0x100000001;
                                                      v219 = 1;
                                                      v215 = 1;
                                                      v220 = 1;
                                                      v209 = 1;
                                                      v217 = 1;
                                                      v204 = 1;
                                                      v213 = 1;
                                                      v202 = 1;
                                                      v211 = 1;
                                                      v200 = 1;
                                                      v207 = 1;
                                                      v198 = 1;
                                                      v205 = 1;
                                                      v199 = 1;
                                                      v206 = 1;
                                                      v201 = 1;
                                                      v210 = 1;
                                                      v203 = 1;
                                                      v212 = 1;
                                                      v208 = 1;
                                                      v216 = 1;
                                                      v214 = 1;
                                                      v218 = 1;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  v214 = 0;
                                                  v218 = 0;
                                                  v222 = 0;
                                                  v224 = 0;
                                                  v228 = 0;
                                                  v15 = 0;
                                                  v16 = 0;
                                                  v17 = 0;
                                                  v18 = 0;
                                                  v19 = 0;
                                                  v20 = 0;
                                                  v229 = 1;
                                                  *&v226[16] = 0;
                                                  v227 = 1;
                                                  *&v226[8] = 0x100000001;
                                                  v11 = 1;
                                                  v225 = 0;
                                                  *v226 = 0x100000001;
                                                  v12 = 1;
                                                  v13 = 1;
                                                  v223 = 0x100000001;
                                                  v14 = 1;
                                                  v221 = 0x100000001;
                                                  v219 = 1;
                                                  v215 = 1;
                                                  v220 = 1;
                                                  v209 = 1;
                                                  v217 = 1;
                                                  v204 = 1;
                                                  v213 = 1;
                                                  v202 = 1;
                                                  v211 = 1;
                                                  v200 = 1;
                                                  v207 = 1;
                                                  v198 = 1;
                                                  v205 = 1;
                                                  v199 = 1;
                                                  v206 = 1;
                                                  v201 = 1;
                                                  v210 = 1;
                                                  v203 = 1;
                                                  v212 = 1;
                                                  v208 = 1;
                                                  v216 = 1;
                                                  v230 = 1;
                                                }
                                              }
                                            }

                                            else
                                            {
                                              v208 = 0;
                                              v216 = 0;
                                              v230 = 0;
                                              v214 = 0;
                                              v218 = 0;
                                              v222 = 0;
                                              v224 = 0;
                                              v228 = 0;
                                              v15 = 0;
                                              v16 = 0;
                                              v17 = 0;
                                              v18 = 0;
                                              v19 = 0;
                                              v20 = 0;
                                              v229 = 1;
                                              *&v226[16] = 0;
                                              v227 = 1;
                                              *&v226[8] = 0x100000001;
                                              v11 = 1;
                                              v225 = 0;
                                              *v226 = 0x100000001;
                                              v12 = 1;
                                              v13 = 1;
                                              v223 = 0x100000001;
                                              v14 = 1;
                                              v221 = 0x100000001;
                                              v219 = 1;
                                              v215 = 1;
                                              v220 = 1;
                                              v209 = 1;
                                              v217 = 1;
                                              v204 = 1;
                                              v213 = 1;
                                              v202 = 1;
                                              v211 = 1;
                                              v200 = 1;
                                              v207 = 1;
                                              v198 = 1;
                                              v205 = 1;
                                              v199 = 1;
                                              v206 = 1;
                                              v201 = 1;
                                              v210 = 1;
                                              v203 = 1;
                                              v212 = 1;
                                              v231 = 1;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v203 = 0;
                                          v212 = 0;
                                          v231 = 0;
                                          v208 = 0;
                                          v216 = 0;
                                          v230 = 0;
                                          v214 = 0;
                                          v218 = 0;
                                          v222 = 0;
                                          v224 = 0;
                                          v228 = 0;
                                          v15 = 0;
                                          v16 = 0;
                                          v17 = 0;
                                          v18 = 0;
                                          v19 = 0;
                                          v20 = 0;
                                          v229 = 1;
                                          *&v226[16] = 0;
                                          v227 = 1;
                                          *&v226[8] = 0x100000001;
                                          v11 = 1;
                                          v225 = 0;
                                          *v226 = 0x100000001;
                                          v12 = 1;
                                          v13 = 1;
                                          v223 = 0x100000001;
                                          v14 = 1;
                                          v221 = 0x100000001;
                                          v219 = 1;
                                          v215 = 1;
                                          v220 = 1;
                                          v209 = 1;
                                          v217 = 1;
                                          v204 = 1;
                                          v213 = 1;
                                          v202 = 1;
                                          v211 = 1;
                                          v200 = 1;
                                          v207 = 1;
                                          v198 = 1;
                                          v205 = 1;
                                          v199 = 1;
                                          v206 = 1;
                                          v201 = 1;
                                          v210 = 1;
                                          v232 = 1;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v201 = 0;
                                      v210 = 0;
                                      v232 = 0;
                                      v203 = 0;
                                      v212 = 0;
                                      v231 = 0;
                                      v208 = 0;
                                      v216 = 0;
                                      v230 = 0;
                                      v214 = 0;
                                      v218 = 0;
                                      v222 = 0;
                                      v224 = 0;
                                      v228 = 0;
                                      v15 = 0;
                                      v16 = 0;
                                      v17 = 0;
                                      v18 = 0;
                                      v19 = 0;
                                      v20 = 0;
                                      v229 = 1;
                                      *&v226[16] = 0;
                                      v227 = 1;
                                      *&v226[8] = 0x100000001;
                                      v11 = 1;
                                      v225 = 0;
                                      *v226 = 0x100000001;
                                      v12 = 1;
                                      v13 = 1;
                                      v223 = 0x100000001;
                                      v14 = 1;
                                      v221 = 0x100000001;
                                      v219 = 1;
                                      v215 = 1;
                                      v220 = 1;
                                      v209 = 1;
                                      v217 = 1;
                                      v204 = 1;
                                      v213 = 1;
                                      v202 = 1;
                                      v211 = 1;
                                      v200 = 1;
                                      v207 = 1;
                                      v198 = 1;
                                      v205 = 1;
                                      v199 = 1;
                                      v206 = 1;
                                      v233 = 1;
                                    }
                                  }
                                }

                                else
                                {
                                  v199 = 0;
                                  v206 = 0;
                                  v233 = 0;
                                  v201 = 0;
                                  v210 = 0;
                                  v232 = 0;
                                  v203 = 0;
                                  v212 = 0;
                                  v231 = 0;
                                  v208 = 0;
                                  v216 = 0;
                                  v230 = 0;
                                  v214 = 0;
                                  v218 = 0;
                                  v222 = 0;
                                  v224 = 0;
                                  v228 = 0;
                                  v15 = 0;
                                  v16 = 0;
                                  v17 = 0;
                                  v18 = 0;
                                  v19 = 0;
                                  v20 = 0;
                                  v229 = 1;
                                  *&v226[16] = 0;
                                  v227 = 1;
                                  *&v226[8] = 0x100000001;
                                  v11 = 1;
                                  v225 = 0;
                                  *v226 = 0x100000001;
                                  v12 = 1;
                                  v13 = 1;
                                  v223 = 0x100000001;
                                  v14 = 1;
                                  v221 = 0x100000001;
                                  v219 = 1;
                                  v215 = 1;
                                  v220 = 1;
                                  v209 = 1;
                                  v217 = 1;
                                  v204 = 1;
                                  v213 = 1;
                                  v202 = 1;
                                  v211 = 1;
                                  v200 = 1;
                                  v207 = 1;
                                  v198 = 1;
                                  v205 = 1;
                                  v234 = 1;
                                }
                              }
                            }

                            else
                            {
                              v198 = 0;
                              v205 = 0;
                              v234 = 0;
                              v199 = 0;
                              v206 = 0;
                              v233 = 0;
                              v201 = 0;
                              v210 = 0;
                              v232 = 0;
                              v203 = 0;
                              v212 = 0;
                              v231 = 0;
                              v208 = 0;
                              v216 = 0;
                              v230 = 0;
                              v214 = 0;
                              v218 = 0;
                              v222 = 0;
                              v224 = 0;
                              v228 = 0;
                              v15 = 0;
                              v16 = 0;
                              v17 = 0;
                              v18 = 0;
                              v19 = 0;
                              v20 = 0;
                              v229 = 1;
                              *&v226[16] = 0;
                              v227 = 1;
                              *&v226[8] = 0x100000001;
                              v11 = 1;
                              v225 = 0;
                              *v226 = 0x100000001;
                              v12 = 1;
                              v13 = 1;
                              v223 = 0x100000001;
                              v14 = 1;
                              v221 = 0x100000001;
                              v219 = 1;
                              v215 = 1;
                              v220 = 1;
                              v209 = 1;
                              v217 = 1;
                              v204 = 1;
                              v213 = 1;
                              v202 = 1;
                              v211 = 1;
                              v200 = 1;
                              v207 = 1;
                              v238 = 1;
                            }
                          }
                        }

                        else
                        {
                          v200 = 0;
                          v207 = 0;
                          v238 = 0;
                          v198 = 0;
                          v205 = 0;
                          v234 = 0;
                          v199 = 0;
                          v206 = 0;
                          v233 = 0;
                          v201 = 0;
                          v210 = 0;
                          v232 = 0;
                          v203 = 0;
                          v212 = 0;
                          v231 = 0;
                          v208 = 0;
                          v216 = 0;
                          v230 = 0;
                          v214 = 0;
                          v218 = 0;
                          v222 = 0;
                          v224 = 0;
                          v228 = 0;
                          v15 = 0;
                          v16 = 0;
                          v17 = 0;
                          v18 = 0;
                          v19 = 0;
                          v20 = 0;
                          v229 = 1;
                          *&v226[16] = 0;
                          v227 = 1;
                          *&v226[8] = 0x100000001;
                          v11 = 1;
                          v225 = 0;
                          *v226 = 0x100000001;
                          v12 = 1;
                          v13 = 1;
                          v223 = 0x100000001;
                          v14 = 1;
                          v221 = 0x100000001;
                          v219 = 1;
                          v215 = 1;
                          v220 = 1;
                          v209 = 1;
                          v217 = 1;
                          v204 = 1;
                          v213 = 1;
                          v202 = 1;
                          v211 = 1;
                          v239 = 1;
                        }
                      }
                    }

                    else
                    {
                      v202 = 0;
                      v211 = 0;
                      v239 = 0;
                      v200 = 0;
                      v207 = 0;
                      v238 = 0;
                      v198 = 0;
                      v205 = 0;
                      v234 = 0;
                      v199 = 0;
                      v206 = 0;
                      v233 = 0;
                      v201 = 0;
                      v210 = 0;
                      v232 = 0;
                      v203 = 0;
                      v212 = 0;
                      v231 = 0;
                      v208 = 0;
                      v216 = 0;
                      v230 = 0;
                      v214 = 0;
                      v218 = 0;
                      v222 = 0;
                      v224 = 0;
                      v228 = 0;
                      v15 = 0;
                      v16 = 0;
                      v17 = 0;
                      v18 = 0;
                      v19 = 0;
                      v20 = 0;
                      v229 = 1;
                      *&v226[16] = 0;
                      v227 = 1;
                      *&v226[8] = 0x100000001;
                      v11 = 1;
                      v225 = 0;
                      *v226 = 0x100000001;
                      v12 = 1;
                      v13 = 1;
                      v223 = 0x100000001;
                      v14 = 1;
                      v221 = 0x100000001;
                      v219 = 1;
                      v215 = 1;
                      v220 = 1;
                      v209 = 1;
                      v217 = 1;
                      v204 = 1;
                      v213 = 1;
                      v240 = 1;
                    }
                  }
                }

                else
                {
                  v204 = 0;
                  v213 = 0;
                  v240 = 0;
                  v202 = 0;
                  v211 = 0;
                  v239 = 0;
                  v200 = 0;
                  v207 = 0;
                  v238 = 0;
                  v198 = 0;
                  v205 = 0;
                  v234 = 0;
                  v199 = 0;
                  v206 = 0;
                  v233 = 0;
                  v201 = 0;
                  v210 = 0;
                  v232 = 0;
                  v203 = 0;
                  v212 = 0;
                  v231 = 0;
                  v208 = 0;
                  v216 = 0;
                  v230 = 0;
                  v214 = 0;
                  v218 = 0;
                  v222 = 0;
                  v224 = 0;
                  v228 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v18 = 0;
                  v19 = 0;
                  v20 = 0;
                  v229 = 1;
                  *&v226[16] = 0;
                  v227 = 1;
                  *&v226[8] = 0x100000001;
                  v11 = 1;
                  v225 = 0;
                  *v226 = 0x100000001;
                  v12 = 1;
                  v13 = 1;
                  v223 = 0x100000001;
                  v14 = 1;
                  v221 = 0x100000001;
                  v219 = 1;
                  v215 = 1;
                  v220 = 1;
                  v209 = 1;
                  v217 = 1;
                  v241 = 1;
                }
              }
            }

            else
            {
              v209 = 0;
              v217 = 0;
              v241 = 0;
              v204 = 0;
              v213 = 0;
              v240 = 0;
              v202 = 0;
              v211 = 0;
              v239 = 0;
              v200 = 0;
              v207 = 0;
              v238 = 0;
              v198 = 0;
              v205 = 0;
              v234 = 0;
              v199 = 0;
              v206 = 0;
              v233 = 0;
              v201 = 0;
              v210 = 0;
              v232 = 0;
              v203 = 0;
              v212 = 0;
              v231 = 0;
              v208 = 0;
              v216 = 0;
              v230 = 0;
              v214 = 0;
              v218 = 0;
              v222 = 0;
              v224 = 0;
              v228 = 0;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v20 = 0;
              v229 = 1;
              *&v226[16] = 0;
              v227 = 1;
              *&v226[8] = 0x100000001;
              v11 = 1;
              v225 = 0;
              *v226 = 0x100000001;
              v12 = 1;
              v13 = 1;
              v223 = 0x100000001;
              v14 = 1;
              v221 = 0x100000001;
              v219 = 1;
              v215 = 1;
              v220 = 1;
              v242 = 1;
            }
          }
        }

        else
        {
          v215 = 0;
          v220 = 0;
          v242 = 0;
          v209 = 0;
          v217 = 0;
          v241 = 0;
          v204 = 0;
          v213 = 0;
          v240 = 0;
          v202 = 0;
          v211 = 0;
          v239 = 0;
          v200 = 0;
          v207 = 0;
          v238 = 0;
          v198 = 0;
          v205 = 0;
          v234 = 0;
          v199 = 0;
          v206 = 0;
          v233 = 0;
          v201 = 0;
          v210 = 0;
          v232 = 0;
          v203 = 0;
          v212 = 0;
          v231 = 0;
          v208 = 0;
          v216 = 0;
          v230 = 0;
          v214 = 0;
          v218 = 0;
          v222 = 0;
          v224 = 0;
          v228 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v229 = 1;
          *&v226[16] = 0;
          v227 = 1;
          *&v226[8] = 0x100000001;
          v11 = 1;
          v225 = 0;
          *v226 = 0x100000001;
          v12 = 1;
          v13 = 1;
          v223 = 0x100000001;
          v14 = 1;
          v221 = 0x100000001;
          v219 = 1;
          LODWORD(v243) = 1;
        }
      }
    }

    else
    {
      v219 = 0;
      v243 = 0x100000000;
      v215 = 0;
      v220 = 0;
      v242 = 0;
      v209 = 0;
      v217 = 0;
      v241 = 0;
      v204 = 0;
      v213 = 0;
      v240 = 0;
      v202 = 0;
      v211 = 0;
      v239 = 0;
      v200 = 0;
      v207 = 0;
      v238 = 0;
      v198 = 0;
      v205 = 0;
      v234 = 0;
      v199 = 0;
      v206 = 0;
      v233 = 0;
      v201 = 0;
      v210 = 0;
      v232 = 0;
      v203 = 0;
      v212 = 0;
      v231 = 0;
      v208 = 0;
      v216 = 0;
      v230 = 0;
      v214 = 0;
      v218 = 0;
      v222 = 0;
      v224 = 0;
      v228 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v229 = 1;
      *&v226[16] = 0;
      v227 = 1;
      *&v226[8] = 0x100000001;
      v11 = 1;
      v225 = 0;
      *v226 = 0x100000001;
      v12 = 1;
      v13 = 1;
      v223 = 0x100000001;
      v14 = 1;
      v221 = 1;
    }
  }

LABEL_11:
  if (v19)
  {
    v195 = equalCopy;
    v21 = v20;
    v22 = v14;
    v23 = v15;
    v24 = v12;
    v25 = v16;
    v26 = v13;
    v27 = v17;
    v28 = v5;
    v29 = v11;
    v30 = v18;

    v31 = v30;
    v11 = v29;
    v5 = v28;
    v17 = v27;
    v13 = v26;
    v16 = v25;
    v12 = v24;
    v15 = v23;
    v14 = v22;
    v20 = v21;
    equalCopy = v195;
    if (!v31)
    {
      goto LABEL_13;
    }
  }

  else if (!v18)
  {
LABEL_13:
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v17)
  {
LABEL_14:
  }

LABEL_15:
  if (*&v226[16])
  {

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else if (!v16)
  {
LABEL_17:
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v15)
  {
LABEL_18:
  }

LABEL_19:
  if (v228)
  {
  }

  if (v225)
  {
  }

  if (v224)
  {
  }

  if (HIDWORD(v228))
  {
  }

  if (HIDWORD(v224))
  {
  }

  if (v222)
  {
  }

  if (HIDWORD(v229))
  {
  }

  if (v218)
  {
  }

  if (v214)
  {
  }

  if (v230)
  {
  }

  if (v216)
  {
  }

  if (v208)
  {
  }

  if (v231)
  {
  }

  if (v212)
  {
  }

  if (v203)
  {
  }

  if (v232)
  {
  }

  if (v210)
  {
  }

  if (v201)
  {
  }

  if (v233)
  {
  }

  if (v206)
  {
  }

  if (v199)
  {
  }

  if (v234)
  {
  }

  if (v205)
  {
  }

  if (v198)
  {
  }

  if (v238)
  {
  }

  if (v207)
  {
  }

  if (v200)
  {
  }

  if (v239)
  {
  }

  if (v211)
  {
  }

  if (v202)
  {
  }

  if (v240)
  {
  }

  if (v213)
  {
  }

  if (v204)
  {
  }

  if (v241)
  {
  }

  if (v217)
  {
  }

  if (v209)
  {
  }

  if (v242)
  {
  }

  if (v220)
  {
  }

  if (v215)
  {
  }

  if (v243)
  {
  }

  if (HIDWORD(v221))
  {
  }

  if (v219)
  {
  }

  if (HIDWORD(v243))
  {
  }

  if (v223)
  {
  }

  if (v221)
  {
  }

  if (LODWORD(v235[0]))
  {
  }

  if (v14)
  {
  }

  if (HIDWORD(v223))
  {
  }

  if (HIDWORD(v235[0]))
  {

    if (!v13)
    {
      goto LABEL_117;
    }

LABEL_152:

    if (!v12)
    {
      goto LABEL_119;
    }

    goto LABEL_118;
  }

  if (v13)
  {
    goto LABEL_152;
  }

LABEL_117:
  if (v12)
  {
LABEL_118:
  }

LABEL_119:
  if (LODWORD(v235[1]))
  {
  }

  if (*v226)
  {
  }

  if (v11)
  {
  }

  if (HIDWORD(v235[1]))
  {
  }

  if (*&v226[8])
  {
  }

  if (*&v226[4])
  {
  }

  if (LODWORD(v235[2]))
  {
  }

  if (v227)
  {
  }

  if (*&v226[12])
  {
  }

  if (HIDWORD(v235[2]))
  {
  }

  if (v229)
  {
  }

  if (v237 == status2)
  {
  }

LABEL_144:
  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setStatus:{-[SFFlightLeg status](self, "status")}];
  departurePublishedTime = [(SFFlightLeg *)self departurePublishedTime];
  v6 = [departurePublishedTime copy];
  [v4 setDeparturePublishedTime:v6];

  departureActualTime = [(SFFlightLeg *)self departureActualTime];
  v8 = [departureActualTime copy];
  [v4 setDepartureActualTime:v8];

  departureTerminal = [(SFFlightLeg *)self departureTerminal];
  v10 = [departureTerminal copy];
  [v4 setDepartureTerminal:v10];

  departureGate = [(SFFlightLeg *)self departureGate];
  v12 = [departureGate copy];
  [v4 setDepartureGate:v12];

  departureAirport = [(SFFlightLeg *)self departureAirport];
  v14 = [departureAirport copy];
  [v4 setDepartureAirport:v14];

  arrivalPublishedTime = [(SFFlightLeg *)self arrivalPublishedTime];
  v16 = [arrivalPublishedTime copy];
  [v4 setArrivalPublishedTime:v16];

  arrivalActualTime = [(SFFlightLeg *)self arrivalActualTime];
  v18 = [arrivalActualTime copy];
  [v4 setArrivalActualTime:v18];

  arrivalTerminal = [(SFFlightLeg *)self arrivalTerminal];
  v20 = [arrivalTerminal copy];
  [v4 setArrivalTerminal:v20];

  arrivalGate = [(SFFlightLeg *)self arrivalGate];
  v22 = [arrivalGate copy];
  [v4 setArrivalGate:v22];

  arrivalAirport = [(SFFlightLeg *)self arrivalAirport];
  v24 = [arrivalAirport copy];
  [v4 setArrivalAirport:v24];

  divertedAirport = [(SFFlightLeg *)self divertedAirport];
  v26 = [divertedAirport copy];
  [v4 setDivertedAirport:v26];

  title = [(SFFlightLeg *)self title];
  v28 = [title copy];
  [v4 setTitle:v28];

  baggageClaim = [(SFFlightLeg *)self baggageClaim];
  v30 = [baggageClaim copy];
  [v4 setBaggageClaim:v30];

  departureGateClosedTime = [(SFFlightLeg *)self departureGateClosedTime];
  v32 = [departureGateClosedTime copy];
  [v4 setDepartureGateClosedTime:v32];

  departureRunwayTime = [(SFFlightLeg *)self departureRunwayTime];
  v34 = [departureRunwayTime copy];
  [v4 setDepartureRunwayTime:v34];

  arrivalRunwayTime = [(SFFlightLeg *)self arrivalRunwayTime];
  v36 = [arrivalRunwayTime copy];
  [v4 setArrivalRunwayTime:v36];

  arrivalGateTime = [(SFFlightLeg *)self arrivalGateTime];
  v38 = [arrivalGateTime copy];
  [v4 setArrivalGateTime:v38];

  lastUpdatedTime = [(SFFlightLeg *)self lastUpdatedTime];
  v40 = [lastUpdatedTime copy];
  [v4 setLastUpdatedTime:v40];

  pegasusDisplayFields = [(SFFlightLeg *)self pegasusDisplayFields];
  v42 = [pegasusDisplayFields copy];
  [v4 setPegasusDisplayFields:v42];

  [v4 setPegasusDefinedState:{-[SFFlightLeg pegasusDefinedState](self, "pegasusDefinedState")}];
  gateArrivalTimes = [(SFFlightLeg *)self gateArrivalTimes];
  v44 = [gateArrivalTimes copy];
  [v4 setGateArrivalTimes:v44];

  runwayArrivalTimes = [(SFFlightLeg *)self runwayArrivalTimes];
  v46 = [runwayArrivalTimes copy];
  [v4 setRunwayArrivalTimes:v46];

  gateDepartureTimes = [(SFFlightLeg *)self gateDepartureTimes];
  v48 = [gateDepartureTimes copy];
  [v4 setGateDepartureTimes:v48];

  runwayDepartureTimes = [(SFFlightLeg *)self runwayDepartureTimes];
  v50 = [runwayDepartureTimes copy];
  [v4 setRunwayDepartureTimes:v50];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFlightLeg alloc] initWithFacade:self];
  jsonData = [(_SFPBFlightLeg *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFlightLeg alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBFlightLeg *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBFlightLeg alloc] initWithFacade:self];
  data = [(_SFPBFlightLeg *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFFlightLeg)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBFlightLeg alloc] initWithData:v5];
  v7 = [(SFFlightLeg *)self initWithProtobuf:v6];

  return v7;
}

@end