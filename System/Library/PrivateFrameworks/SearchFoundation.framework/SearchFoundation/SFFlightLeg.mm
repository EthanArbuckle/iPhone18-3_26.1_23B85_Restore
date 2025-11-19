@interface SFFlightLeg
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFFlightLeg)initWithCoder:(id)a3;
- (SFFlightLeg)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFFlightLeg

- (SFFlightLeg)initWithProtobuf:(id)a3
{
  v4 = a3;
  v88.receiver = self;
  v88.super_class = SFFlightLeg;
  v5 = [(SFFlightLeg *)&v88 init];
  if (v5)
  {
    if ([v4 status])
    {
      -[SFFlightLeg setStatus:](v5, "setStatus:", [v4 status]);
    }

    v6 = [v4 departurePublishedTime];

    if (v6)
    {
      v7 = [v4 departurePublishedTime];
      v8 = MEMORY[0x1E695DF00];
      [v7 secondsSince1970];
      v9 = [v8 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setDeparturePublishedTime:v9];
    }

    v10 = [v4 departureActualTime];

    if (v10)
    {
      v11 = [v4 departureActualTime];
      v12 = MEMORY[0x1E695DF00];
      [v11 secondsSince1970];
      v13 = [v12 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setDepartureActualTime:v13];
    }

    v14 = [v4 departureTerminal];

    if (v14)
    {
      v15 = [v4 departureTerminal];
      [(SFFlightLeg *)v5 setDepartureTerminal:v15];
    }

    v16 = [v4 departureGate];

    if (v16)
    {
      v17 = [v4 departureGate];
      [(SFFlightLeg *)v5 setDepartureGate:v17];
    }

    v18 = [v4 departureAirport];

    if (v18)
    {
      v19 = [SFAirport alloc];
      v20 = [v4 departureAirport];
      v21 = [(SFAirport *)v19 initWithProtobuf:v20];
      [(SFFlightLeg *)v5 setDepartureAirport:v21];
    }

    v22 = [v4 arrivalPublishedTime];

    if (v22)
    {
      v23 = [v4 arrivalPublishedTime];
      v24 = MEMORY[0x1E695DF00];
      [v23 secondsSince1970];
      v25 = [v24 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setArrivalPublishedTime:v25];
    }

    v26 = [v4 arrivalActualTime];

    if (v26)
    {
      v27 = [v4 arrivalActualTime];
      v28 = MEMORY[0x1E695DF00];
      [v27 secondsSince1970];
      v29 = [v28 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setArrivalActualTime:v29];
    }

    v30 = [v4 arrivalTerminal];

    if (v30)
    {
      v31 = [v4 arrivalTerminal];
      [(SFFlightLeg *)v5 setArrivalTerminal:v31];
    }

    v32 = [v4 arrivalGate];

    if (v32)
    {
      v33 = [v4 arrivalGate];
      [(SFFlightLeg *)v5 setArrivalGate:v33];
    }

    v34 = [v4 arrivalAirport];

    if (v34)
    {
      v35 = [SFAirport alloc];
      v36 = [v4 arrivalAirport];
      v37 = [(SFAirport *)v35 initWithProtobuf:v36];
      [(SFFlightLeg *)v5 setArrivalAirport:v37];
    }

    v38 = [v4 divertedAirport];

    if (v38)
    {
      v39 = [SFAirport alloc];
      v40 = [v4 divertedAirport];
      v41 = [(SFAirport *)v39 initWithProtobuf:v40];
      [(SFFlightLeg *)v5 setDivertedAirport:v41];
    }

    v42 = [v4 title];

    if (v42)
    {
      v43 = [v4 title];
      [(SFFlightLeg *)v5 setTitle:v43];
    }

    v44 = [v4 baggageClaim];

    if (v44)
    {
      v45 = [v4 baggageClaim];
      [(SFFlightLeg *)v5 setBaggageClaim:v45];
    }

    v46 = [v4 departureGateClosedTime];

    if (v46)
    {
      v47 = [v4 departureGateClosedTime];
      v48 = MEMORY[0x1E695DF00];
      [v47 secondsSince1970];
      v49 = [v48 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setDepartureGateClosedTime:v49];
    }

    v50 = [v4 departureRunwayTime];

    if (v50)
    {
      v51 = [v4 departureRunwayTime];
      v52 = MEMORY[0x1E695DF00];
      [v51 secondsSince1970];
      v53 = [v52 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setDepartureRunwayTime:v53];
    }

    v54 = [v4 arrivalRunwayTime];

    if (v54)
    {
      v55 = [v4 arrivalRunwayTime];
      v56 = MEMORY[0x1E695DF00];
      [v55 secondsSince1970];
      v57 = [v56 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setArrivalRunwayTime:v57];
    }

    v58 = [v4 arrivalGateTime];

    if (v58)
    {
      v59 = [v4 arrivalGateTime];
      v60 = MEMORY[0x1E695DF00];
      [v59 secondsSince1970];
      v61 = [v60 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setArrivalGateTime:v61];
    }

    v62 = [v4 lastUpdatedTime];

    if (v62)
    {
      v63 = [v4 lastUpdatedTime];
      v64 = MEMORY[0x1E695DF00];
      [v63 secondsSince1970];
      v65 = [v64 dateWithTimeIntervalSince1970:?];
      [(SFFlightLeg *)v5 setLastUpdatedTime:v65];
    }

    v66 = [v4 pegasusDisplayFields];

    if (v66)
    {
      v67 = [SFPegasusDisplayFields alloc];
      v68 = [v4 pegasusDisplayFields];
      v69 = [(SFPegasusDisplayFields *)v67 initWithProtobuf:v68];
      [(SFFlightLeg *)v5 setPegasusDisplayFields:v69];
    }

    if ([v4 pegasusDefinedState])
    {
      -[SFFlightLeg setPegasusDefinedState:](v5, "setPegasusDefinedState:", [v4 pegasusDefinedState]);
    }

    v70 = [v4 gateArrivalTimes];

    if (v70)
    {
      v71 = [SFFlightDateDescriptor alloc];
      v72 = [v4 gateArrivalTimes];
      v73 = [(SFFlightDateDescriptor *)v71 initWithProtobuf:v72];
      [(SFFlightLeg *)v5 setGateArrivalTimes:v73];
    }

    v74 = [v4 runwayArrivalTimes];

    if (v74)
    {
      v75 = [SFFlightDateDescriptor alloc];
      v76 = [v4 runwayArrivalTimes];
      v77 = [(SFFlightDateDescriptor *)v75 initWithProtobuf:v76];
      [(SFFlightLeg *)v5 setRunwayArrivalTimes:v77];
    }

    v78 = [v4 gateDepartureTimes];

    if (v78)
    {
      v79 = [SFFlightDateDescriptor alloc];
      v80 = [v4 gateDepartureTimes];
      v81 = [(SFFlightDateDescriptor *)v79 initWithProtobuf:v80];
      [(SFFlightLeg *)v5 setGateDepartureTimes:v81];
    }

    v82 = [v4 runwayDepartureTimes];

    if (v82)
    {
      v83 = [SFFlightDateDescriptor alloc];
      v84 = [v4 runwayDepartureTimes];
      v85 = [(SFFlightDateDescriptor *)v83 initWithProtobuf:v84];
      [(SFFlightLeg *)v5 setRunwayDepartureTimes:v85];
    }

    v86 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFFlightLeg *)self status];
  v51 = [(SFFlightLeg *)self departurePublishedTime];
  v4 = [v51 hash] ^ v3;
  v50 = [(SFFlightLeg *)self departureActualTime];
  v5 = [v50 hash];
  v49 = [(SFFlightLeg *)self departureTerminal];
  v6 = v4 ^ v5 ^ [v49 hash];
  v48 = [(SFFlightLeg *)self departureGate];
  v7 = [v48 hash];
  v47 = [(SFFlightLeg *)self departureAirport];
  v8 = v7 ^ [v47 hash];
  v46 = [(SFFlightLeg *)self arrivalPublishedTime];
  v9 = v6 ^ v8 ^ [v46 hash];
  v45 = [(SFFlightLeg *)self arrivalActualTime];
  v10 = [v45 hash];
  v44 = [(SFFlightLeg *)self arrivalTerminal];
  v11 = v10 ^ [v44 hash];
  v43 = [(SFFlightLeg *)self arrivalGate];
  v12 = v11 ^ [v43 hash];
  v42 = [(SFFlightLeg *)self arrivalAirport];
  v13 = v9 ^ v12 ^ [v42 hash];
  v41 = [(SFFlightLeg *)self divertedAirport];
  v14 = [v41 hash];
  v40 = [(SFFlightLeg *)self title];
  v15 = v14 ^ [v40 hash];
  v39 = [(SFFlightLeg *)self baggageClaim];
  v16 = v15 ^ [v39 hash];
  v38 = [(SFFlightLeg *)self departureGateClosedTime];
  v17 = v16 ^ [v38 hash];
  v37 = [(SFFlightLeg *)self departureRunwayTime];
  v18 = v13 ^ v17 ^ [v37 hash];
  v19 = [(SFFlightLeg *)self arrivalRunwayTime];
  v20 = [v19 hash];
  v21 = [(SFFlightLeg *)self arrivalGateTime];
  v22 = v20 ^ [v21 hash];
  v23 = [(SFFlightLeg *)self lastUpdatedTime];
  v24 = v22 ^ [v23 hash];
  v25 = [(SFFlightLeg *)self pegasusDisplayFields];
  v26 = v24 ^ [v25 hash];
  v27 = v26 ^ [(SFFlightLeg *)self pegasusDefinedState];
  v28 = [(SFFlightLeg *)self gateArrivalTimes];
  v36 = v18 ^ v27 ^ [v28 hash];
  v29 = [(SFFlightLeg *)self runwayArrivalTimes];
  v30 = [v29 hash];
  v31 = [(SFFlightLeg *)self gateDepartureTimes];
  v32 = v30 ^ [v31 hash];
  v33 = [(SFFlightLeg *)self runwayDepartureTimes];
  v34 = v32 ^ [v33 hash];

  return v36 ^ v34;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v20 = 1;
    goto LABEL_144;
  }

  if (![(SFFlightLeg *)v4 isMemberOfClass:objc_opt_class()])
  {
    v20 = 0;
    goto LABEL_144;
  }

  v5 = v4;
  v6 = [(SFFlightLeg *)self status];
  v236 = [(SFFlightLeg *)v5 status];
  v237 = v6;
  if (v6 != v236 || ([(SFFlightLeg *)self departurePublishedTime], v197 = objc_claimAutoreleasedReturnValue(), [(SFFlightLeg *)v5 departurePublishedTime], v196 = objc_claimAutoreleasedReturnValue(), (v197 != 0) == (v196 == 0)))
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

  v8 = [(SFFlightLeg *)self departurePublishedTime];
  v9 = v8 != 0;
  v194 = v8;
  if (v8)
  {
    v10 = [(SFFlightLeg *)self departurePublishedTime];
    [(SFFlightLeg *)v5 departurePublishedTime];
    v190 = v191 = v10;
    if (![v10 isEqual:?])
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

  v193 = [(SFFlightLeg *)self departureActualTime];
  v192 = [(SFFlightLeg *)v5 departureActualTime];
  HIDWORD(v235[2]) = v9;
  if ((v193 != 0) == (v192 == 0))
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

  v33 = [(SFFlightLeg *)self departureActualTime];
  v34 = v33 != 0;
  v189 = v33;
  if (v33)
  {
    v35 = [(SFFlightLeg *)self departureActualTime];
    [(SFFlightLeg *)v5 departureActualTime];
    v185 = v186 = v35;
    if (![v35 isEqual:?])
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

  v188 = [(SFFlightLeg *)self departureTerminal];
  v187 = [(SFFlightLeg *)v5 departureTerminal];
  if ((v188 != 0) == (v187 == 0))
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

  v36 = [(SFFlightLeg *)self departureTerminal];
  v37 = v36 != 0;
  v184 = v36;
  if (v36)
  {
    v38 = [(SFFlightLeg *)self departureTerminal];
    [(SFFlightLeg *)v5 departureTerminal];
    v180 = v181 = v38;
    if (![v38 isEqual:?])
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

  v183 = [(SFFlightLeg *)self departureGate];
  v182 = [(SFFlightLeg *)v5 departureGate];
  if ((v183 != 0) == (v182 == 0))
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

  v39 = [(SFFlightLeg *)self departureGate];
  v40 = v39 != 0;
  v179 = v39;
  if (v39)
  {
    v41 = [(SFFlightLeg *)self departureGate];
    [(SFFlightLeg *)v5 departureGate];
    v175 = v176 = v41;
    if (![v41 isEqual:?])
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

  v178 = [(SFFlightLeg *)self departureAirport];
  v177 = [(SFFlightLeg *)v5 departureAirport];
  if ((v178 != 0) == (v177 == 0))
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

  v42 = [(SFFlightLeg *)self departureAirport];
  v43 = v42 != 0;
  v174 = v42;
  if (v42)
  {
    v44 = [(SFFlightLeg *)self departureAirport];
    [(SFFlightLeg *)v5 departureAirport];
    v170 = v171 = v44;
    if (![v44 isEqual:?])
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

  v173 = [(SFFlightLeg *)self arrivalPublishedTime];
  v172 = [(SFFlightLeg *)v5 arrivalPublishedTime];
  if ((v173 != 0) == (v172 == 0))
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

  v45 = [(SFFlightLeg *)self arrivalPublishedTime];
  v46 = v45 != 0;
  v169 = v45;
  if (v45)
  {
    v47 = [(SFFlightLeg *)self arrivalPublishedTime];
    [(SFFlightLeg *)v5 arrivalPublishedTime];
    v165 = v166 = v47;
    if (![v47 isEqual:?])
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

  v168 = [(SFFlightLeg *)self arrivalActualTime];
  v167 = [(SFFlightLeg *)v5 arrivalActualTime];
  if ((v168 != 0) == (v167 == 0))
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
    v48 = [(SFFlightLeg *)self arrivalActualTime];
    HIDWORD(v243) = v48 != 0;
    v164 = v48;
    if (!v48 || (-[SFFlightLeg arrivalActualTime](self, "arrivalActualTime"), v49 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg arrivalActualTime](v5, "arrivalActualTime"), v161 = v49, v160 = objc_claimAutoreleasedReturnValue(), [v49 isEqual:?]))
    {
      v163 = [(SFFlightLeg *)self arrivalTerminal];
      v162 = [(SFFlightLeg *)v5 arrivalTerminal];
      if ((v163 != 0) == (v162 == 0))
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
        v50 = [(SFFlightLeg *)self arrivalTerminal];
        LODWORD(v243) = v50 != 0;
        v159 = v50;
        if (!v50 || (-[SFFlightLeg arrivalTerminal](self, "arrivalTerminal"), v51 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg arrivalTerminal](v5, "arrivalTerminal"), v156 = v51, v155 = objc_claimAutoreleasedReturnValue(), [v51 isEqual:?]))
        {
          v158 = [(SFFlightLeg *)self arrivalGate];
          v157 = [(SFFlightLeg *)v5 arrivalGate];
          if ((v158 != 0) == (v157 == 0))
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
            v52 = [(SFFlightLeg *)self arrivalGate];
            v242 = v52 != 0;
            v154 = v52;
            if (!v52 || (-[SFFlightLeg arrivalGate](self, "arrivalGate"), v53 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg arrivalGate](v5, "arrivalGate"), v151 = v53, v150 = objc_claimAutoreleasedReturnValue(), [v53 isEqual:?]))
            {
              v153 = [(SFFlightLeg *)self arrivalAirport];
              v152 = [(SFFlightLeg *)v5 arrivalAirport];
              if ((v153 != 0) == (v152 == 0))
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
                v54 = [(SFFlightLeg *)self arrivalAirport];
                v241 = v54 != 0;
                v149 = v54;
                if (!v54 || (-[SFFlightLeg arrivalAirport](self, "arrivalAirport"), v55 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg arrivalAirport](v5, "arrivalAirport"), v145 = objc_claimAutoreleasedReturnValue(), v146 = v55, [v55 isEqual:?]))
                {
                  v148 = [(SFFlightLeg *)self divertedAirport];
                  v147 = [(SFFlightLeg *)v5 divertedAirport];
                  if ((v148 != 0) == (v147 == 0))
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
                    v56 = [(SFFlightLeg *)self divertedAirport];
                    v240 = v56 != 0;
                    v144 = v56;
                    if (!v56 || (-[SFFlightLeg divertedAirport](self, "divertedAirport"), v57 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg divertedAirport](v5, "divertedAirport"), v140 = objc_claimAutoreleasedReturnValue(), v141 = v57, [v57 isEqual:?]))
                    {
                      v143 = [(SFFlightLeg *)self title];
                      v142 = [(SFFlightLeg *)v5 title];
                      if ((v143 != 0) == (v142 == 0))
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
                        v58 = [(SFFlightLeg *)self title];
                        v239 = v58 != 0;
                        v139 = v58;
                        if (!v58 || (-[SFFlightLeg title](self, "title"), v59 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg title](v5, "title"), v135 = objc_claimAutoreleasedReturnValue(), v136 = v59, [v59 isEqual:?]))
                        {
                          v138 = [(SFFlightLeg *)self baggageClaim];
                          v137 = [(SFFlightLeg *)v5 baggageClaim];
                          if ((v138 != 0) == (v137 == 0))
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
                            v60 = [(SFFlightLeg *)self baggageClaim];
                            v238 = v60 != 0;
                            v134 = v60;
                            if (!v60 || (-[SFFlightLeg baggageClaim](self, "baggageClaim"), v61 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg baggageClaim](v5, "baggageClaim"), v130 = objc_claimAutoreleasedReturnValue(), v131 = v61, [v61 isEqual:?]))
                            {
                              v133 = [(SFFlightLeg *)self departureGateClosedTime];
                              v132 = [(SFFlightLeg *)v5 departureGateClosedTime];
                              if ((v133 != 0) == (v132 == 0))
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
                                v62 = [(SFFlightLeg *)self departureGateClosedTime];
                                v234 = v62 != 0;
                                v129 = v62;
                                if (!v62 || (-[SFFlightLeg departureGateClosedTime](self, "departureGateClosedTime"), v63 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg departureGateClosedTime](v5, "departureGateClosedTime"), v127 = objc_claimAutoreleasedReturnValue(), v128 = v63, [v63 isEqual:?]))
                                {
                                  v126 = [(SFFlightLeg *)self departureRunwayTime];
                                  v125 = [(SFFlightLeg *)v5 departureRunwayTime];
                                  if ((v126 != 0) == (v125 == 0))
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
                                    v64 = [(SFFlightLeg *)self departureRunwayTime];
                                    v233 = v64 != 0;
                                    v124 = v64;
                                    if (!v64 || (-[SFFlightLeg departureRunwayTime](self, "departureRunwayTime"), v65 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg departureRunwayTime](v5, "departureRunwayTime"), v122 = objc_claimAutoreleasedReturnValue(), v123 = v65, [v65 isEqual:?]))
                                    {
                                      v121 = [(SFFlightLeg *)self arrivalRunwayTime];
                                      v120 = [(SFFlightLeg *)v5 arrivalRunwayTime];
                                      if ((v121 != 0) == (v120 == 0))
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
                                        v66 = [(SFFlightLeg *)self arrivalRunwayTime];
                                        v232 = v66 != 0;
                                        v119 = v66;
                                        if (!v66 || (-[SFFlightLeg arrivalRunwayTime](self, "arrivalRunwayTime"), v67 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg arrivalRunwayTime](v5, "arrivalRunwayTime"), v117 = objc_claimAutoreleasedReturnValue(), v118 = v67, [v67 isEqual:?]))
                                        {
                                          v114 = [(SFFlightLeg *)self arrivalGateTime];
                                          v112 = [(SFFlightLeg *)v5 arrivalGateTime];
                                          if ((v114 != 0) == (v112 == 0))
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
                                            v68 = [(SFFlightLeg *)self arrivalGateTime];
                                            v231 = v68 != 0;
                                            v110 = v68;
                                            if (!v68 || (-[SFFlightLeg arrivalGateTime](self, "arrivalGateTime"), v69 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg arrivalGateTime](v5, "arrivalGateTime"), v115 = objc_claimAutoreleasedReturnValue(), v116 = v69, [v69 isEqual:?]))
                                            {
                                              v109 = [(SFFlightLeg *)self lastUpdatedTime];
                                              v107 = [(SFFlightLeg *)v5 lastUpdatedTime];
                                              if ((v109 != 0) == (v107 == 0))
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
                                                v70 = [(SFFlightLeg *)self lastUpdatedTime];
                                                v230 = v70 != 0;
                                                v105 = v70;
                                                if (!v70 || (-[SFFlightLeg lastUpdatedTime](self, "lastUpdatedTime"), v71 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg lastUpdatedTime](v5, "lastUpdatedTime"), v113 = v71, v111 = objc_claimAutoreleasedReturnValue(), [v71 isEqual:?]))
                                                {
                                                  v104 = [(SFFlightLeg *)self pegasusDisplayFields];
                                                  v103 = [(SFFlightLeg *)v5 pegasusDisplayFields];
                                                  if ((v104 != 0) == (v103 == 0))
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
                                                    v72 = [(SFFlightLeg *)self pegasusDisplayFields];
                                                    HIDWORD(v229) = v72 != 0;
                                                    v100 = v72;
                                                    if (!v72 || (-[SFFlightLeg pegasusDisplayFields](self, "pegasusDisplayFields"), v73 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg pegasusDisplayFields](v5, "pegasusDisplayFields"), v108 = v73, v106 = objc_claimAutoreleasedReturnValue(), [v73 isEqual:?]))
                                                    {
                                                      v74 = [(SFFlightLeg *)self pegasusDefinedState];
                                                      if (v74 == [(SFFlightLeg *)v5 pegasusDefinedState])
                                                      {
                                                        v99 = [(SFFlightLeg *)self gateArrivalTimes];
                                                        v98 = [(SFFlightLeg *)v5 gateArrivalTimes];
                                                        if ((v99 != 0) == (v98 == 0))
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
                                                          v75 = [(SFFlightLeg *)self gateArrivalTimes];
                                                          HIDWORD(v228) = v75 != 0;
                                                          v95 = v75;
                                                          if (!v75 || (-[SFFlightLeg gateArrivalTimes](self, "gateArrivalTimes"), v76 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg gateArrivalTimes](v5, "gateArrivalTimes"), v101 = objc_claimAutoreleasedReturnValue(), v102 = v76, [v76 isEqual:?]))
                                                          {
                                                            v94 = [(SFFlightLeg *)self runwayArrivalTimes];
                                                            v93 = [(SFFlightLeg *)v5 runwayArrivalTimes];
                                                            if ((v94 != 0) == (v93 == 0))
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
                                                              v77 = [(SFFlightLeg *)self runwayArrivalTimes];
                                                              LODWORD(v228) = v77 != 0;
                                                              v90 = v77;
                                                              if (!v77 || (-[SFFlightLeg runwayArrivalTimes](self, "runwayArrivalTimes"), v78 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg runwayArrivalTimes](v5, "runwayArrivalTimes"), v96 = objc_claimAutoreleasedReturnValue(), v97 = v78, [v78 isEqual:?]))
                                                              {
                                                                v89 = [(SFFlightLeg *)self gateDepartureTimes];
                                                                v88 = [(SFFlightLeg *)v5 gateDepartureTimes];
                                                                if ((v89 != 0) == (v88 == 0))
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
                                                                  v79 = [(SFFlightLeg *)self gateDepartureTimes];
                                                                  *&v226[16] = v79 != 0;
                                                                  v86 = v79;
                                                                  if (!v79 || (-[SFFlightLeg gateDepartureTimes](self, "gateDepartureTimes"), v80 = objc_claimAutoreleasedReturnValue(), -[SFFlightLeg gateDepartureTimes](v5, "gateDepartureTimes"), v91 = objc_claimAutoreleasedReturnValue(), v92 = v80, [v80 isEqual:?]))
                                                                  {
                                                                    v84 = [(SFFlightLeg *)self runwayDepartureTimes];
                                                                    v83 = [(SFFlightLeg *)v5 runwayDepartureTimes];
                                                                    if ((v84 != 0) == (v83 == 0))
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
                                                                      v87 = [(SFFlightLeg *)self runwayDepartureTimes];
                                                                      if (v87)
                                                                      {
                                                                        v81 = [(SFFlightLeg *)self runwayDepartureTimes];
                                                                        v82 = [(SFFlightLeg *)v5 runwayDepartureTimes];
                                                                        v85 = v81;
                                                                        v20 = [v81 isEqual:v82];
                                                                        v7 = v82;
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
                                                                        v87 = 0;
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
    v195 = v4;
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
    v4 = v195;
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

  if (v237 == v236)
  {
  }

LABEL_144:
  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setStatus:{-[SFFlightLeg status](self, "status")}];
  v5 = [(SFFlightLeg *)self departurePublishedTime];
  v6 = [v5 copy];
  [v4 setDeparturePublishedTime:v6];

  v7 = [(SFFlightLeg *)self departureActualTime];
  v8 = [v7 copy];
  [v4 setDepartureActualTime:v8];

  v9 = [(SFFlightLeg *)self departureTerminal];
  v10 = [v9 copy];
  [v4 setDepartureTerminal:v10];

  v11 = [(SFFlightLeg *)self departureGate];
  v12 = [v11 copy];
  [v4 setDepartureGate:v12];

  v13 = [(SFFlightLeg *)self departureAirport];
  v14 = [v13 copy];
  [v4 setDepartureAirport:v14];

  v15 = [(SFFlightLeg *)self arrivalPublishedTime];
  v16 = [v15 copy];
  [v4 setArrivalPublishedTime:v16];

  v17 = [(SFFlightLeg *)self arrivalActualTime];
  v18 = [v17 copy];
  [v4 setArrivalActualTime:v18];

  v19 = [(SFFlightLeg *)self arrivalTerminal];
  v20 = [v19 copy];
  [v4 setArrivalTerminal:v20];

  v21 = [(SFFlightLeg *)self arrivalGate];
  v22 = [v21 copy];
  [v4 setArrivalGate:v22];

  v23 = [(SFFlightLeg *)self arrivalAirport];
  v24 = [v23 copy];
  [v4 setArrivalAirport:v24];

  v25 = [(SFFlightLeg *)self divertedAirport];
  v26 = [v25 copy];
  [v4 setDivertedAirport:v26];

  v27 = [(SFFlightLeg *)self title];
  v28 = [v27 copy];
  [v4 setTitle:v28];

  v29 = [(SFFlightLeg *)self baggageClaim];
  v30 = [v29 copy];
  [v4 setBaggageClaim:v30];

  v31 = [(SFFlightLeg *)self departureGateClosedTime];
  v32 = [v31 copy];
  [v4 setDepartureGateClosedTime:v32];

  v33 = [(SFFlightLeg *)self departureRunwayTime];
  v34 = [v33 copy];
  [v4 setDepartureRunwayTime:v34];

  v35 = [(SFFlightLeg *)self arrivalRunwayTime];
  v36 = [v35 copy];
  [v4 setArrivalRunwayTime:v36];

  v37 = [(SFFlightLeg *)self arrivalGateTime];
  v38 = [v37 copy];
  [v4 setArrivalGateTime:v38];

  v39 = [(SFFlightLeg *)self lastUpdatedTime];
  v40 = [v39 copy];
  [v4 setLastUpdatedTime:v40];

  v41 = [(SFFlightLeg *)self pegasusDisplayFields];
  v42 = [v41 copy];
  [v4 setPegasusDisplayFields:v42];

  [v4 setPegasusDefinedState:{-[SFFlightLeg pegasusDefinedState](self, "pegasusDefinedState")}];
  v43 = [(SFFlightLeg *)self gateArrivalTimes];
  v44 = [v43 copy];
  [v4 setGateArrivalTimes:v44];

  v45 = [(SFFlightLeg *)self runwayArrivalTimes];
  v46 = [v45 copy];
  [v4 setRunwayArrivalTimes:v46];

  v47 = [(SFFlightLeg *)self gateDepartureTimes];
  v48 = [v47 copy];
  [v4 setGateDepartureTimes:v48];

  v49 = [(SFFlightLeg *)self runwayDepartureTimes];
  v50 = [v49 copy];
  [v4 setRunwayDepartureTimes:v50];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBFlightLeg alloc] initWithFacade:self];
  v3 = [(_SFPBFlightLeg *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBFlightLeg alloc] initWithFacade:self];
  v3 = [(_SFPBFlightLeg *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBFlightLeg alloc] initWithFacade:self];
  v5 = [(_SFPBFlightLeg *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFFlightLeg)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBFlightLeg alloc] initWithData:v5];
  v7 = [(SFFlightLeg *)self initWithProtobuf:v6];

  return v7;
}

@end