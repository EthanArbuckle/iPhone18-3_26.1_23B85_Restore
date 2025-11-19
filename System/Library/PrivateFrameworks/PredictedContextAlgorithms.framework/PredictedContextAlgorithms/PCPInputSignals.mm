@interface PCPInputSignals
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCalendarEvents:(id)a3;
- (void)addHomeKitHomes:(id)a3;
- (void)addLocationHistory:(id)a3;
- (void)addLocationOfInterests:(id)a3;
- (void)addMapsHistoricalNavigation:(id)a3;
- (void)addMapsViewedPlaces:(id)a3;
- (void)addMotionActivity:(id)a3;
- (void)addPropagatedLocations:(id)a3;
- (void)addTransitions:(id)a3;
- (void)addVisit:(id)a3;
- (void)addWorkouts:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPInputSignals

- (void)addVisit:(id)a3
{
  v4 = a3;
  visits = self->_visits;
  v8 = v4;
  if (!visits)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_visits;
    self->_visits = v6;

    v4 = v8;
    visits = self->_visits;
  }

  [(NSMutableArray *)visits addObject:v4];
}

- (void)addTransitions:(id)a3
{
  v4 = a3;
  transitions = self->_transitions;
  v8 = v4;
  if (!transitions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_transitions;
    self->_transitions = v6;

    v4 = v8;
    transitions = self->_transitions;
  }

  [(NSMutableArray *)transitions addObject:v4];
}

- (void)addLocationOfInterests:(id)a3
{
  v4 = a3;
  locationOfInterests = self->_locationOfInterests;
  v8 = v4;
  if (!locationOfInterests)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_locationOfInterests;
    self->_locationOfInterests = v6;

    v4 = v8;
    locationOfInterests = self->_locationOfInterests;
  }

  [(NSMutableArray *)locationOfInterests addObject:v4];
}

- (void)addLocationHistory:(id)a3
{
  v4 = a3;
  locationHistorys = self->_locationHistorys;
  v8 = v4;
  if (!locationHistorys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_locationHistorys;
    self->_locationHistorys = v6;

    v4 = v8;
    locationHistorys = self->_locationHistorys;
  }

  [(NSMutableArray *)locationHistorys addObject:v4];
}

- (void)addCalendarEvents:(id)a3
{
  v4 = a3;
  calendarEvents = self->_calendarEvents;
  v8 = v4;
  if (!calendarEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_calendarEvents;
    self->_calendarEvents = v6;

    v4 = v8;
    calendarEvents = self->_calendarEvents;
  }

  [(NSMutableArray *)calendarEvents addObject:v4];
}

- (void)addMapsHistoricalNavigation:(id)a3
{
  v4 = a3;
  mapsHistoricalNavigations = self->_mapsHistoricalNavigations;
  v8 = v4;
  if (!mapsHistoricalNavigations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_mapsHistoricalNavigations;
    self->_mapsHistoricalNavigations = v6;

    v4 = v8;
    mapsHistoricalNavigations = self->_mapsHistoricalNavigations;
  }

  [(NSMutableArray *)mapsHistoricalNavigations addObject:v4];
}

- (void)addMapsViewedPlaces:(id)a3
{
  v4 = a3;
  mapsViewedPlaces = self->_mapsViewedPlaces;
  v8 = v4;
  if (!mapsViewedPlaces)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_mapsViewedPlaces;
    self->_mapsViewedPlaces = v6;

    v4 = v8;
    mapsViewedPlaces = self->_mapsViewedPlaces;
  }

  [(NSMutableArray *)mapsViewedPlaces addObject:v4];
}

- (void)addMotionActivity:(id)a3
{
  v4 = a3;
  motionActivitys = self->_motionActivitys;
  v8 = v4;
  if (!motionActivitys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_motionActivitys;
    self->_motionActivitys = v6;

    v4 = v8;
    motionActivitys = self->_motionActivitys;
  }

  [(NSMutableArray *)motionActivitys addObject:v4];
}

- (void)addHomeKitHomes:(id)a3
{
  v4 = a3;
  homeKitHomes = self->_homeKitHomes;
  v8 = v4;
  if (!homeKitHomes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_homeKitHomes;
    self->_homeKitHomes = v6;

    v4 = v8;
    homeKitHomes = self->_homeKitHomes;
  }

  [(NSMutableArray *)homeKitHomes addObject:v4];
}

- (void)addWorkouts:(id)a3
{
  v4 = a3;
  workouts = self->_workouts;
  v8 = v4;
  if (!workouts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_workouts;
    self->_workouts = v6;

    v4 = v8;
    workouts = self->_workouts;
  }

  [(NSMutableArray *)workouts addObject:v4];
}

- (void)addPropagatedLocations:(id)a3
{
  v4 = a3;
  propagatedLocations = self->_propagatedLocations;
  v8 = v4;
  if (!propagatedLocations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_propagatedLocations;
    self->_propagatedLocations = v6;

    v4 = v8;
    propagatedLocations = self->_propagatedLocations;
  }

  [(NSMutableArray *)propagatedLocations addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPInputSignals;
  v4 = [(PCPInputSignals *)&v8 description];
  v5 = [(PCPInputSignals *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v144 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_currentTimeCFAbsolute];
    [v3 setObject:v4 forKey:@"currentTimeCFAbsolute"];
  }

  if ([(NSMutableArray *)self->_visits count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_visits, "count")}];
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v6 = self->_visits;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v129 objects:v143 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v130;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v130 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v129 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v129 objects:v143 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"visit"];
  }

  if ([(NSMutableArray *)self->_transitions count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_transitions, "count")}];
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v13 = self->_transitions;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v125 objects:v142 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v126;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v126 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v125 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v125 objects:v142 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"transitions"];
  }

  if ([(NSMutableArray *)self->_locationOfInterests count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_locationOfInterests, "count")}];
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v20 = self->_locationOfInterests;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v121 objects:v141 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v122;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v122 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v121 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v121 objects:v141 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKey:@"locationOfInterests"];
  }

  if ([(NSMutableArray *)self->_locationHistorys count])
  {
    v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_locationHistorys, "count")}];
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v27 = self->_locationHistorys;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v117 objects:v140 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v118;
      do
      {
        for (m = 0; m != v29; ++m)
        {
          if (*v118 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v117 + 1) + 8 * m) dictionaryRepresentation];
          [v26 addObject:v32];
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v117 objects:v140 count:16];
      }

      while (v29);
    }

    [v3 setObject:v26 forKey:@"locationHistory"];
  }

  if ([(NSMutableArray *)self->_calendarEvents count])
  {
    v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_calendarEvents, "count")}];
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v34 = self->_calendarEvents;
    v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v113 objects:v139 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v114;
      do
      {
        for (n = 0; n != v36; ++n)
        {
          if (*v114 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [*(*(&v113 + 1) + 8 * n) dictionaryRepresentation];
          [v33 addObject:v39];
        }

        v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v113 objects:v139 count:16];
      }

      while (v36);
    }

    [v3 setObject:v33 forKey:@"calendarEvents"];
  }

  mapsActiveNavigation = self->_mapsActiveNavigation;
  if (mapsActiveNavigation)
  {
    v41 = [(PCPMapsActiveNavigation *)mapsActiveNavigation dictionaryRepresentation];
    [v3 setObject:v41 forKey:@"mapsActiveNavigation"];
  }

  if ([(NSMutableArray *)self->_mapsHistoricalNavigations count])
  {
    v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_mapsHistoricalNavigations, "count")}];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v43 = self->_mapsHistoricalNavigations;
    v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v109 objects:v138 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v110;
      do
      {
        for (ii = 0; ii != v45; ++ii)
        {
          if (*v110 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = [*(*(&v109 + 1) + 8 * ii) dictionaryRepresentation];
          [v42 addObject:v48];
        }

        v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v109 objects:v138 count:16];
      }

      while (v45);
    }

    [v3 setObject:v42 forKey:@"mapsHistoricalNavigation"];
  }

  if ([(NSMutableArray *)self->_mapsViewedPlaces count])
  {
    v49 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_mapsViewedPlaces, "count")}];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v50 = self->_mapsViewedPlaces;
    v51 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v105 objects:v137 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v106;
      do
      {
        for (jj = 0; jj != v52; ++jj)
        {
          if (*v106 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = [*(*(&v105 + 1) + 8 * jj) dictionaryRepresentation];
          [v49 addObject:v55];
        }

        v52 = [(NSMutableArray *)v50 countByEnumeratingWithState:&v105 objects:v137 count:16];
      }

      while (v52);
    }

    [v3 setObject:v49 forKey:@"mapsViewedPlaces"];
  }

  parkedCar = self->_parkedCar;
  if (parkedCar)
  {
    v57 = [(PCPParkedCar *)parkedCar dictionaryRepresentation];
    [v3 setObject:v57 forKey:@"parkedCar"];
  }

  if ([(NSMutableArray *)self->_motionActivitys count])
  {
    v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_motionActivitys, "count")}];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v59 = self->_motionActivitys;
    v60 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v101 objects:v136 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v102;
      do
      {
        for (kk = 0; kk != v61; ++kk)
        {
          if (*v102 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = [*(*(&v101 + 1) + 8 * kk) dictionaryRepresentation];
          [v58 addObject:v64];
        }

        v61 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v101 objects:v136 count:16];
      }

      while (v61);
    }

    [v3 setObject:v58 forKey:@"motionActivity"];
  }

  if ([(NSMutableArray *)self->_homeKitHomes count])
  {
    v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_homeKitHomes, "count")}];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v66 = self->_homeKitHomes;
    v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v97 objects:v135 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v98;
      do
      {
        for (mm = 0; mm != v68; ++mm)
        {
          if (*v98 != v69)
          {
            objc_enumerationMutation(v66);
          }

          v71 = [*(*(&v97 + 1) + 8 * mm) dictionaryRepresentation];
          [v65 addObject:v71];
        }

        v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v97 objects:v135 count:16];
      }

      while (v68);
    }

    [v3 setObject:v65 forKey:@"homeKitHomes"];
  }

  if ([(NSMutableArray *)self->_workouts count])
  {
    v72 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_workouts, "count")}];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v73 = self->_workouts;
    v74 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v93 objects:v134 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v94;
      do
      {
        for (nn = 0; nn != v75; ++nn)
        {
          if (*v94 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = [*(*(&v93 + 1) + 8 * nn) dictionaryRepresentation];
          [v72 addObject:v78];
        }

        v75 = [(NSMutableArray *)v73 countByEnumeratingWithState:&v93 objects:v134 count:16];
      }

      while (v75);
    }

    [v3 setObject:v72 forKey:@"workouts"];
  }

  if ([(NSMutableArray *)self->_propagatedLocations count])
  {
    v79 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_propagatedLocations, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v80 = self->_propagatedLocations;
    v81 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v89 objects:v133 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v90;
      do
      {
        for (i1 = 0; i1 != v82; ++i1)
        {
          if (*v90 != v83)
          {
            objc_enumerationMutation(v80);
          }

          v85 = [*(*(&v89 + 1) + 8 * i1) dictionaryRepresentation];
          [v79 addObject:v85];
        }

        v82 = [(NSMutableArray *)v80 countByEnumeratingWithState:&v89 objects:v133 count:16];
      }

      while (v82);
    }

    [v3 setObject:v79 forKey:@"propagatedLocations"];
  }

  currentTimeZoneAbbreviation = self->_currentTimeZoneAbbreviation;
  if (currentTimeZoneAbbreviation)
  {
    [v3 setObject:currentTimeZoneAbbreviation forKey:@"currentTimeZoneAbbreviation"];
  }

  v87 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v128 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    currentTimeCFAbsolute = self->_currentTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v6 = self->_visits;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v113 objects:v127 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v114;
    do
    {
      v10 = 0;
      do
      {
        if (*v114 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v113 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v113 objects:v127 count:16];
    }

    while (v8);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v12 = self->_transitions;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v109 objects:v126 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v110;
    do
    {
      v16 = 0;
      do
      {
        if (*v110 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v109 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v109 objects:v126 count:16];
    }

    while (v14);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v18 = self->_locationOfInterests;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v105 objects:v125 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v106;
    do
    {
      v22 = 0;
      do
      {
        if (*v106 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v105 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v105 objects:v125 count:16];
    }

    while (v20);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v24 = self->_locationHistorys;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v101 objects:v124 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v102;
    do
    {
      v28 = 0;
      do
      {
        if (*v102 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v101 + 1) + 8 * v28);
        PBDataWriterWriteSubmessage();
        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v101 objects:v124 count:16];
    }

    while (v26);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v30 = self->_calendarEvents;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v97 objects:v123 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v98;
    do
    {
      v34 = 0;
      do
      {
        if (*v98 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v97 + 1) + 8 * v34);
        PBDataWriterWriteSubmessage();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v97 objects:v123 count:16];
    }

    while (v32);
  }

  if (self->_mapsActiveNavigation)
  {
    PBDataWriterWriteSubmessage();
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v36 = self->_mapsHistoricalNavigations;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v93 objects:v122 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v94;
    do
    {
      v40 = 0;
      do
      {
        if (*v94 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v93 + 1) + 8 * v40);
        PBDataWriterWriteSubmessage();
        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v93 objects:v122 count:16];
    }

    while (v38);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v42 = self->_mapsViewedPlaces;
  v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v89 objects:v121 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v90;
    do
    {
      v46 = 0;
      do
      {
        if (*v90 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v89 + 1) + 8 * v46);
        PBDataWriterWriteSubmessage();
        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v89 objects:v121 count:16];
    }

    while (v44);
  }

  if (self->_parkedCar)
  {
    PBDataWriterWriteSubmessage();
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v48 = self->_motionActivitys;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v85 objects:v120 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v86;
    do
    {
      v52 = 0;
      do
      {
        if (*v86 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v85 + 1) + 8 * v52);
        PBDataWriterWriteSubmessage();
        ++v52;
      }

      while (v50 != v52);
      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v85 objects:v120 count:16];
    }

    while (v50);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v54 = self->_homeKitHomes;
  v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v81 objects:v119 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v82;
    do
    {
      v58 = 0;
      do
      {
        if (*v82 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v81 + 1) + 8 * v58);
        PBDataWriterWriteSubmessage();
        ++v58;
      }

      while (v56 != v58);
      v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v81 objects:v119 count:16];
    }

    while (v56);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v60 = self->_workouts;
  v61 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v77 objects:v118 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v78;
    do
    {
      v64 = 0;
      do
      {
        if (*v78 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v77 + 1) + 8 * v64);
        PBDataWriterWriteSubmessage();
        ++v64;
      }

      while (v62 != v64);
      v62 = [(NSMutableArray *)v60 countByEnumeratingWithState:&v77 objects:v118 count:16];
    }

    while (v62);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v66 = self->_propagatedLocations;
  v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v73 objects:v117 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v74;
    do
    {
      v70 = 0;
      do
      {
        if (*v74 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = *(*(&v73 + 1) + 8 * v70);
        PBDataWriterWriteSubmessage();
        ++v70;
      }

      while (v68 != v70);
      v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v73 objects:v117 count:16];
    }

    while (v68);
  }

  if (self->_currentTimeZoneAbbreviation)
  {
    PBDataWriterWriteStringField();
  }

  v72 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_currentTimeCFAbsolute;
    *(v4 + 128) |= 1u;
  }

  v49 = v4;
  if ([(PCPInputSignals *)self visitsCount])
  {
    [v49 clearVisits];
    v5 = [(PCPInputSignals *)self visitsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PCPInputSignals *)self visitAtIndex:i];
        [v49 addVisit:v8];
      }
    }
  }

  if ([(PCPInputSignals *)self transitionsCount])
  {
    [v49 clearTransitions];
    v9 = [(PCPInputSignals *)self transitionsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(PCPInputSignals *)self transitionsAtIndex:j];
        [v49 addTransitions:v12];
      }
    }
  }

  if ([(PCPInputSignals *)self locationOfInterestsCount])
  {
    [v49 clearLocationOfInterests];
    v13 = [(PCPInputSignals *)self locationOfInterestsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(PCPInputSignals *)self locationOfInterestsAtIndex:k];
        [v49 addLocationOfInterests:v16];
      }
    }
  }

  if ([(PCPInputSignals *)self locationHistorysCount])
  {
    [v49 clearLocationHistorys];
    v17 = [(PCPInputSignals *)self locationHistorysCount];
    if (v17)
    {
      v18 = v17;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(PCPInputSignals *)self locationHistoryAtIndex:m];
        [v49 addLocationHistory:v20];
      }
    }
  }

  if ([(PCPInputSignals *)self calendarEventsCount])
  {
    [v49 clearCalendarEvents];
    v21 = [(PCPInputSignals *)self calendarEventsCount];
    if (v21)
    {
      v22 = v21;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(PCPInputSignals *)self calendarEventsAtIndex:n];
        [v49 addCalendarEvents:v24];
      }
    }
  }

  if (self->_mapsActiveNavigation)
  {
    [v49 setMapsActiveNavigation:?];
  }

  if ([(PCPInputSignals *)self mapsHistoricalNavigationsCount])
  {
    [v49 clearMapsHistoricalNavigations];
    v25 = [(PCPInputSignals *)self mapsHistoricalNavigationsCount];
    if (v25)
    {
      v26 = v25;
      for (ii = 0; ii != v26; ++ii)
      {
        v28 = [(PCPInputSignals *)self mapsHistoricalNavigationAtIndex:ii];
        [v49 addMapsHistoricalNavigation:v28];
      }
    }
  }

  if ([(PCPInputSignals *)self mapsViewedPlacesCount])
  {
    [v49 clearMapsViewedPlaces];
    v29 = [(PCPInputSignals *)self mapsViewedPlacesCount];
    if (v29)
    {
      v30 = v29;
      for (jj = 0; jj != v30; ++jj)
      {
        v32 = [(PCPInputSignals *)self mapsViewedPlacesAtIndex:jj];
        [v49 addMapsViewedPlaces:v32];
      }
    }
  }

  if (self->_parkedCar)
  {
    [v49 setParkedCar:?];
  }

  if ([(PCPInputSignals *)self motionActivitysCount])
  {
    [v49 clearMotionActivitys];
    v33 = [(PCPInputSignals *)self motionActivitysCount];
    if (v33)
    {
      v34 = v33;
      for (kk = 0; kk != v34; ++kk)
      {
        v36 = [(PCPInputSignals *)self motionActivityAtIndex:kk];
        [v49 addMotionActivity:v36];
      }
    }
  }

  if ([(PCPInputSignals *)self homeKitHomesCount])
  {
    [v49 clearHomeKitHomes];
    v37 = [(PCPInputSignals *)self homeKitHomesCount];
    if (v37)
    {
      v38 = v37;
      for (mm = 0; mm != v38; ++mm)
      {
        v40 = [(PCPInputSignals *)self homeKitHomesAtIndex:mm];
        [v49 addHomeKitHomes:v40];
      }
    }
  }

  if ([(PCPInputSignals *)self workoutsCount])
  {
    [v49 clearWorkouts];
    v41 = [(PCPInputSignals *)self workoutsCount];
    if (v41)
    {
      v42 = v41;
      for (nn = 0; nn != v42; ++nn)
      {
        v44 = [(PCPInputSignals *)self workoutsAtIndex:nn];
        [v49 addWorkouts:v44];
      }
    }
  }

  if ([(PCPInputSignals *)self propagatedLocationsCount])
  {
    [v49 clearPropagatedLocations];
    v45 = [(PCPInputSignals *)self propagatedLocationsCount];
    if (v45)
    {
      v46 = v45;
      for (i1 = 0; i1 != v46; ++i1)
      {
        v48 = [(PCPInputSignals *)self propagatedLocationsAtIndex:i1];
        [v49 addPropagatedLocations:v48];
      }
    }
  }

  if (self->_currentTimeZoneAbbreviation)
  {
    [v49 setCurrentTimeZoneAbbreviation:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v136 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_currentTimeCFAbsolute;
    *(v5 + 128) |= 1u;
  }

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v7 = self->_visits;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v121 objects:v135 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v122;
    do
    {
      v11 = 0;
      do
      {
        if (*v122 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v121 + 1) + 8 * v11) copyWithZone:a3];
        [v6 addVisit:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v121 objects:v135 count:16];
    }

    while (v9);
  }

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v13 = self->_transitions;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v117 objects:v134 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v118;
    do
    {
      v17 = 0;
      do
      {
        if (*v118 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v117 + 1) + 8 * v17) copyWithZone:a3];
        [v6 addTransitions:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v117 objects:v134 count:16];
    }

    while (v15);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v19 = self->_locationOfInterests;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v113 objects:v133 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v114;
    do
    {
      v23 = 0;
      do
      {
        if (*v114 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v113 + 1) + 8 * v23) copyWithZone:a3];
        [v6 addLocationOfInterests:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v113 objects:v133 count:16];
    }

    while (v21);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v25 = self->_locationHistorys;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v109 objects:v132 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v110;
    do
    {
      v29 = 0;
      do
      {
        if (*v110 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v109 + 1) + 8 * v29) copyWithZone:a3];
        [v6 addLocationHistory:v30];

        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v109 objects:v132 count:16];
    }

    while (v27);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v31 = self->_calendarEvents;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v105 objects:v131 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v106;
    do
    {
      v35 = 0;
      do
      {
        if (*v106 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v105 + 1) + 8 * v35) copyWithZone:a3];
        [v6 addCalendarEvents:v36];

        ++v35;
      }

      while (v33 != v35);
      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v105 objects:v131 count:16];
    }

    while (v33);
  }

  v37 = [(PCPMapsActiveNavigation *)self->_mapsActiveNavigation copyWithZone:a3];
  v38 = v6[7];
  v6[7] = v37;

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v39 = self->_mapsHistoricalNavigations;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v101 objects:v130 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v102;
    do
    {
      v43 = 0;
      do
      {
        if (*v102 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v101 + 1) + 8 * v43) copyWithZone:a3];
        [v6 addMapsHistoricalNavigation:v44];

        ++v43;
      }

      while (v41 != v43);
      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v101 objects:v130 count:16];
    }

    while (v41);
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v45 = self->_mapsViewedPlaces;
  v46 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v97 objects:v129 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v98;
    do
    {
      v49 = 0;
      do
      {
        if (*v98 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [*(*(&v97 + 1) + 8 * v49) copyWithZone:a3];
        [v6 addMapsViewedPlaces:v50];

        ++v49;
      }

      while (v47 != v49);
      v47 = [(NSMutableArray *)v45 countByEnumeratingWithState:&v97 objects:v129 count:16];
    }

    while (v47);
  }

  v51 = [(PCPParkedCar *)self->_parkedCar copyWithZone:a3];
  v52 = v6[11];
  v6[11] = v51;

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v53 = self->_motionActivitys;
  v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v93 objects:v128 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v94;
    do
    {
      v57 = 0;
      do
      {
        if (*v94 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = [*(*(&v93 + 1) + 8 * v57) copyWithZone:a3];
        [v6 addMotionActivity:v58];

        ++v57;
      }

      while (v55 != v57);
      v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v93 objects:v128 count:16];
    }

    while (v55);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v59 = self->_homeKitHomes;
  v60 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v89 objects:v127 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v90;
    do
    {
      v63 = 0;
      do
      {
        if (*v90 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = [*(*(&v89 + 1) + 8 * v63) copyWithZone:a3];
        [v6 addHomeKitHomes:v64];

        ++v63;
      }

      while (v61 != v63);
      v61 = [(NSMutableArray *)v59 countByEnumeratingWithState:&v89 objects:v127 count:16];
    }

    while (v61);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v65 = self->_workouts;
  v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v85 objects:v126 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v86;
    do
    {
      v69 = 0;
      do
      {
        if (*v86 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = [*(*(&v85 + 1) + 8 * v69) copyWithZone:a3];
        [v6 addWorkouts:v70];

        ++v69;
      }

      while (v67 != v69);
      v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v85 objects:v126 count:16];
    }

    while (v67);
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v71 = self->_propagatedLocations;
  v72 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v81 objects:v125 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v82;
    do
    {
      v75 = 0;
      do
      {
        if (*v82 != v74)
        {
          objc_enumerationMutation(v71);
        }

        v76 = [*(*(&v81 + 1) + 8 * v75) copyWithZone:{a3, v81}];
        [v6 addPropagatedLocations:v76];

        ++v75;
      }

      while (v73 != v75);
      v73 = [(NSMutableArray *)v71 countByEnumeratingWithState:&v81 objects:v125 count:16];
    }

    while (v73);
  }

  v77 = [(NSString *)self->_currentTimeZoneAbbreviation copyWithZone:a3];
  v78 = v6[3];
  v6[3] = v77;

  v79 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  v5 = *(v4 + 128);
  if (*&self->_has)
  {
    if ((*(v4 + 128) & 1) == 0 || self->_currentTimeCFAbsolute != *(v4 + 1))
    {
      goto LABEL_35;
    }
  }

  else if (*(v4 + 128))
  {
LABEL_35:
    v20 = 0;
    goto LABEL_36;
  }

  visits = self->_visits;
  if (visits | *(v4 + 14) && ![(NSMutableArray *)visits isEqual:?])
  {
    goto LABEL_35;
  }

  transitions = self->_transitions;
  if (transitions | *(v4 + 13))
  {
    if (![(NSMutableArray *)transitions isEqual:?])
    {
      goto LABEL_35;
    }
  }

  locationOfInterests = self->_locationOfInterests;
  if (locationOfInterests | *(v4 + 6))
  {
    if (![(NSMutableArray *)locationOfInterests isEqual:?])
    {
      goto LABEL_35;
    }
  }

  locationHistorys = self->_locationHistorys;
  if (locationHistorys | *(v4 + 5))
  {
    if (![(NSMutableArray *)locationHistorys isEqual:?])
    {
      goto LABEL_35;
    }
  }

  calendarEvents = self->_calendarEvents;
  if (calendarEvents | *(v4 + 2))
  {
    if (![(NSMutableArray *)calendarEvents isEqual:?])
    {
      goto LABEL_35;
    }
  }

  mapsActiveNavigation = self->_mapsActiveNavigation;
  if (mapsActiveNavigation | *(v4 + 7))
  {
    if (![(PCPMapsActiveNavigation *)mapsActiveNavigation isEqual:?])
    {
      goto LABEL_35;
    }
  }

  mapsHistoricalNavigations = self->_mapsHistoricalNavigations;
  if (mapsHistoricalNavigations | *(v4 + 8))
  {
    if (![(NSMutableArray *)mapsHistoricalNavigations isEqual:?])
    {
      goto LABEL_35;
    }
  }

  mapsViewedPlaces = self->_mapsViewedPlaces;
  if (mapsViewedPlaces | *(v4 + 9))
  {
    if (![(NSMutableArray *)mapsViewedPlaces isEqual:?])
    {
      goto LABEL_35;
    }
  }

  parkedCar = self->_parkedCar;
  if (parkedCar | *(v4 + 11))
  {
    if (![(PCPParkedCar *)parkedCar isEqual:?])
    {
      goto LABEL_35;
    }
  }

  motionActivitys = self->_motionActivitys;
  if (motionActivitys | *(v4 + 10))
  {
    if (![(NSMutableArray *)motionActivitys isEqual:?])
    {
      goto LABEL_35;
    }
  }

  homeKitHomes = self->_homeKitHomes;
  if (homeKitHomes | *(v4 + 4))
  {
    if (![(NSMutableArray *)homeKitHomes isEqual:?])
    {
      goto LABEL_35;
    }
  }

  workouts = self->_workouts;
  if (workouts | *(v4 + 15))
  {
    if (![(NSMutableArray *)workouts isEqual:?])
    {
      goto LABEL_35;
    }
  }

  propagatedLocations = self->_propagatedLocations;
  if (propagatedLocations | *(v4 + 12))
  {
    if (![(NSMutableArray *)propagatedLocations isEqual:?])
    {
      goto LABEL_35;
    }
  }

  currentTimeZoneAbbreviation = self->_currentTimeZoneAbbreviation;
  if (currentTimeZoneAbbreviation | *(v4 + 3))
  {
    v20 = [(NSString *)currentTimeZoneAbbreviation isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_36:

  return v20;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    currentTimeCFAbsolute = self->_currentTimeCFAbsolute;
    if (currentTimeCFAbsolute < 0.0)
    {
      currentTimeCFAbsolute = -currentTimeCFAbsolute;
    }

    *v2.i64 = floor(currentTimeCFAbsolute + 0.5);
    v7 = (currentTimeCFAbsolute - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSMutableArray *)self->_visits hash]^ v5;
  v10 = [(NSMutableArray *)self->_transitions hash];
  v11 = v9 ^ v10 ^ [(NSMutableArray *)self->_locationOfInterests hash];
  v12 = [(NSMutableArray *)self->_locationHistorys hash];
  v13 = v12 ^ [(NSMutableArray *)self->_calendarEvents hash];
  v14 = v11 ^ v13 ^ [(PCPMapsActiveNavigation *)self->_mapsActiveNavigation hash];
  v15 = [(NSMutableArray *)self->_mapsHistoricalNavigations hash];
  v16 = v15 ^ [(NSMutableArray *)self->_mapsViewedPlaces hash];
  v17 = v16 ^ [(PCPParkedCar *)self->_parkedCar hash];
  v18 = v14 ^ v17 ^ [(NSMutableArray *)self->_motionActivitys hash];
  v19 = [(NSMutableArray *)self->_homeKitHomes hash];
  v20 = v19 ^ [(NSMutableArray *)self->_workouts hash];
  v21 = v20 ^ [(NSMutableArray *)self->_propagatedLocations hash];
  return v18 ^ v21 ^ [(NSString *)self->_currentTimeZoneAbbreviation hash];
}

- (void)mergeFrom:(id)a3
{
  v121 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 128))
  {
    self->_currentTimeCFAbsolute = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v6 = *(v4 + 14);
  v7 = [v6 countByEnumeratingWithState:&v106 objects:v120 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v107;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v107 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PCPInputSignals *)self addVisit:*(*(&v106 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v106 objects:v120 count:16];
    }

    while (v8);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v11 = v5[13];
  v12 = [v11 countByEnumeratingWithState:&v102 objects:v119 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v103;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v103 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(PCPInputSignals *)self addTransitions:*(*(&v102 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v102 objects:v119 count:16];
    }

    while (v13);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v16 = v5[6];
  v17 = [v16 countByEnumeratingWithState:&v98 objects:v118 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v99;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v99 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(PCPInputSignals *)self addLocationOfInterests:*(*(&v98 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v98 objects:v118 count:16];
    }

    while (v18);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v21 = v5[5];
  v22 = [v21 countByEnumeratingWithState:&v94 objects:v117 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v95;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v95 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(PCPInputSignals *)self addLocationHistory:*(*(&v94 + 1) + 8 * m)];
      }

      v23 = [v21 countByEnumeratingWithState:&v94 objects:v117 count:16];
    }

    while (v23);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v26 = v5[2];
  v27 = [v26 countByEnumeratingWithState:&v90 objects:v116 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v91;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v91 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(PCPInputSignals *)self addCalendarEvents:*(*(&v90 + 1) + 8 * n)];
      }

      v28 = [v26 countByEnumeratingWithState:&v90 objects:v116 count:16];
    }

    while (v28);
  }

  mapsActiveNavigation = self->_mapsActiveNavigation;
  v32 = v5[7];
  if (mapsActiveNavigation)
  {
    if (v32)
    {
      [(PCPMapsActiveNavigation *)mapsActiveNavigation mergeFrom:?];
    }
  }

  else if (v32)
  {
    [(PCPInputSignals *)self setMapsActiveNavigation:?];
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v33 = v5[8];
  v34 = [v33 countByEnumeratingWithState:&v86 objects:v115 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v87;
    do
    {
      for (ii = 0; ii != v35; ++ii)
      {
        if (*v87 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [(PCPInputSignals *)self addMapsHistoricalNavigation:*(*(&v86 + 1) + 8 * ii)];
      }

      v35 = [v33 countByEnumeratingWithState:&v86 objects:v115 count:16];
    }

    while (v35);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v38 = v5[9];
  v39 = [v38 countByEnumeratingWithState:&v82 objects:v114 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v83;
    do
    {
      for (jj = 0; jj != v40; ++jj)
      {
        if (*v83 != v41)
        {
          objc_enumerationMutation(v38);
        }

        [(PCPInputSignals *)self addMapsViewedPlaces:*(*(&v82 + 1) + 8 * jj)];
      }

      v40 = [v38 countByEnumeratingWithState:&v82 objects:v114 count:16];
    }

    while (v40);
  }

  parkedCar = self->_parkedCar;
  v44 = v5[11];
  if (parkedCar)
  {
    if (v44)
    {
      [(PCPParkedCar *)parkedCar mergeFrom:?];
    }
  }

  else if (v44)
  {
    [(PCPInputSignals *)self setParkedCar:?];
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v45 = v5[10];
  v46 = [v45 countByEnumeratingWithState:&v78 objects:v113 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v79;
    do
    {
      for (kk = 0; kk != v47; ++kk)
      {
        if (*v79 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [(PCPInputSignals *)self addMotionActivity:*(*(&v78 + 1) + 8 * kk)];
      }

      v47 = [v45 countByEnumeratingWithState:&v78 objects:v113 count:16];
    }

    while (v47);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v50 = v5[4];
  v51 = [v50 countByEnumeratingWithState:&v74 objects:v112 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v75;
    do
    {
      for (mm = 0; mm != v52; ++mm)
      {
        if (*v75 != v53)
        {
          objc_enumerationMutation(v50);
        }

        [(PCPInputSignals *)self addHomeKitHomes:*(*(&v74 + 1) + 8 * mm)];
      }

      v52 = [v50 countByEnumeratingWithState:&v74 objects:v112 count:16];
    }

    while (v52);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v55 = v5[15];
  v56 = [v55 countByEnumeratingWithState:&v70 objects:v111 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v71;
    do
    {
      for (nn = 0; nn != v57; ++nn)
      {
        if (*v71 != v58)
        {
          objc_enumerationMutation(v55);
        }

        [(PCPInputSignals *)self addWorkouts:*(*(&v70 + 1) + 8 * nn)];
      }

      v57 = [v55 countByEnumeratingWithState:&v70 objects:v111 count:16];
    }

    while (v57);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v60 = v5[12];
  v61 = [v60 countByEnumeratingWithState:&v66 objects:v110 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v67;
    do
    {
      for (i1 = 0; i1 != v62; ++i1)
      {
        if (*v67 != v63)
        {
          objc_enumerationMutation(v60);
        }

        [(PCPInputSignals *)self addPropagatedLocations:*(*(&v66 + 1) + 8 * i1), v66];
      }

      v62 = [v60 countByEnumeratingWithState:&v66 objects:v110 count:16];
    }

    while (v62);
  }

  if (v5[3])
  {
    [(PCPInputSignals *)self setCurrentTimeZoneAbbreviation:?];
  }

  v65 = *MEMORY[0x1E69E9840];
}

@end