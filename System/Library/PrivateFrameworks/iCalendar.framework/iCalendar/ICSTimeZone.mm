@interface ICSTimeZone
+ (BOOL)_isTimeZone:(id)a3 pseudoDSTForDate:(id)a4;
+ (BOOL)perfectMatchForSubarray:(id)a3 inTZChangeArray:(id)a4;
+ (id)blocksAfterDate:(id)a3 untilDate:(id)a4 forTimeZone:(id)a5;
+ (id)quickTimeZoneNames;
+ (id)slowTimeZoneNames;
+ (id)timeZoneWithSystemTimeZoneName:(id)a3;
+ (int64_t)matchTypeForSubarray:(id)a3 inTZChangeArray:(id)a4;
- (BOOL)isEqualToNSTimeZone:(id)a3 forDate:(id)a4;
- (ICSTimeZone)initWithSystemTimeZone:(id)a3;
- (ICSTimeZone)initWithTimeZone:(id)a3 fromDate:(id)a4 options:(int)a5;
- (NSString)tzid;
- (id)_previousDSTTransitionForDate:(id)a3 timezone:(id)a4;
- (id)computeTimeZoneChangeListFromDate:(id)a3 toDate:(id)a4;
- (id)getNSTimeZone:(id)a3;
- (id)getNSTimeZoneFromDate:(id)a3 toDate:(id)a4;
- (id)propertiesToExcludeForChecksum;
- (id)systemTimeZoneForDate:(id)a3;
@end

@implementation ICSTimeZone

- (id)propertiesToExcludeForChecksum
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ICSTimeZone_propertiesToExcludeForChecksum__block_invoke;
  block[3] = &unk_27A64B928;
  block[4] = self;
  if (propertiesToExcludeForChecksum_onceToken_0 != -1)
  {
    dispatch_once(&propertiesToExcludeForChecksum_onceToken_0, block);
  }

  return propertiesToExcludeForChecksum_propertiesToExcludeForChecksum;
}

void __45__ICSTimeZone_propertiesToExcludeForChecksum__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6.receiver = *(a1 + 32);
  v6.super_class = ICSTimeZone;
  v1 = objc_msgSendSuper2(&v6, sel_propertiesToExcludeForChecksum);
  v7[0] = @"UID";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v3 = [v1 setByAddingObjectsFromArray:v2];
  v4 = propertiesToExcludeForChecksum_propertiesToExcludeForChecksum;
  propertiesToExcludeForChecksum_propertiesToExcludeForChecksum = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (NSString)tzid
{
  v2 = [(ICSComponent *)self propertiesForName:@"TZID"];
  v3 = [v2 lastObject];
  v4 = [v3 value];

  return v4;
}

- (id)systemTimeZoneForDate:(id)a3
{
  v4 = a3;
  systemTimeZone = self->_systemTimeZone;
  if (!systemTimeZone)
  {
    v6 = [(ICSTimeZone *)self getNSTimeZone:v4];
    v7 = self->_systemTimeZone;
    self->_systemTimeZone = v6;

    systemTimeZone = self->_systemTimeZone;
    if (!systemTimeZone)
    {
      v8 = [MEMORY[0x277CBEB68] null];
      v9 = self->_systemTimeZone;
      self->_systemTimeZone = v8;

      systemTimeZone = self->_systemTimeZone;
    }
  }

  v10 = [MEMORY[0x277CBEB68] null];

  if (systemTimeZone == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = self->_systemTimeZone;
  }

  return v11;
}

+ (id)blocksAfterDate:(id)a3 untilDate:(id)a4 forTimeZone:(id)a5
{
  v197 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB18] array];
  v157 = v8;
  v12 = [v10 nextDaylightSavingTimeTransitionAfterDate:v8];
  v163 = *MEMORY[0x277CBE5C0];
  v166 = v9;
  v182 = v11;
  v162 = v10;
  if ([v12 compare:v9] == -1)
  {
    v167 = 0;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    v16 = 0;
    v172 = 0;
    v17 = 0;
    v18 = 0;
    v173 = 0;
    v174 = 0;
    v19 = v12;
    v158 = a1;
    while (1)
    {
      v20 = [v19 dateByAddingTimeInterval:1.0];
      if ([v10 isDaylightSavingTimeForDate:v20])
      {
        v176 = 0;
        v183 = 1;
      }

      else
      {
        v183 = [a1 _isTimeZone:v10 pseudoDSTForDate:v20];
        v176 = v183;
      }

      obj = [v10 abbreviationForDate:v20];
      v21 = [v19 dateByAddingTimeInterval:-1.0];
      v22 = [v10 secondsFromGMTForDate:v21];

      v186 = v20;
      v23 = [v10 secondsFromGMTForDate:v20];
      if ([v11 count] && v22 == v23)
      {
        v180 = v18;
        v14 = v17;
        v15 = v16;
        v24 = obj;
        goto LABEL_57;
      }

      v171 = v19;
      v178 = v22;
      v25 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v163];
      v27 = v167;
      v26 = v168;
      v28 = v183 ? v167 : v168;
      v29 = v28;
      v180 = v23;
      if (!v29)
      {
        break;
      }

      v30 = v29;
      v31 = [v29 dtstart];
      v32 = [v31 value];

      [v25 setTimeZone:v10];
      v33 = [v32 components];
      v34 = [v25 dateFromComponents:v33];

      v35 = v174;
      if (!v183)
      {
        v35 = v173;
      }

      v159 = v35;
      if (!v34)
      {
        goto LABEL_22;
      }

      v36 = MEMORY[0x277CBEBB0];
      v37 = [v34 dateByAddingTimeInterval:-1.0];
      v38 = [v36 timeZoneForSecondsFromGMT:{objc_msgSend(v10, "secondsFromGMTForDate:", v37)}];
      [v25 setTimeZone:v38];

      v39 = [v25 components:1788 fromDate:v34];
      [v25 rangeOfUnit:16 inUnit:8 forDate:v34];
      v164 = v34;
      v165 = v39;
      if ([v39 day] + 7 > v40)
      {
        [v39 setWeekdayOrdinal:-1];
      }

LABEL_23:
      v42 = MEMORY[0x277CBEBB0];
      v43 = [v171 dateByAddingTimeInterval:-1.0];
      v44 = [v42 timeZoneForSecondsFromGMT:{objc_msgSend(v10, "secondsFromGMTForDate:", v43)}];
      [v25 setTimeZone:v44];

      if (v171)
      {
        v45 = [v25 components:1788 fromDate:v171];
        [v25 rangeOfUnit:16 inUnit:8 forDate:v171];
        v46 = v178;
        if ([v45 day] + 7 > v47)
        {
          [v45 setWeekdayOrdinal:-1];
        }
      }

      else
      {
        [0 day];
        v45 = 0;
        v46 = v178;
      }

      v48 = v183;
      if (v46 == [v30 tzoffsetfrom] && v180 == objc_msgSend(v30, "tzoffsetto") && ((v176 ^ 1 | v172) & 1) != 0)
      {
        v156 = v30;
        v49 = [v30 tzname];
        v50 = [v49 lastObject];
        if ([obj isEqualToString:v50] && objc_msgSend(v45, "year") == v159 + 1 && (v51 = objc_msgSend(v45, "month"), v51 == objc_msgSend(v165, "month")) && (v52 = objc_msgSend(v45, "weekday"), v52 == objc_msgSend(v165, "weekday")) && (v53 = objc_msgSend(v45, "weekdayOrdinal"), v53 == objc_msgSend(v165, "weekdayOrdinal")) && (v54 = objc_msgSend(v45, "hour"), v54 == objc_msgSend(v165, "hour")))
        {
          v55 = [v45 minute];
          v56 = [v165 minute];

          v57 = v55 == v56;
          v48 = v183;
          v30 = v156;
          if (v57)
          {
            v58 = [v156 rrule];
            v59 = [v58 count];

            v60 = v156;
            if (!v59)
            {
              v61 = [[ICSRecurrenceRule alloc] initWithFrequency:7];
              v62 = MEMORY[0x277CBEA60];
              v63 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v45, "month")}];
              v64 = [v62 arrayWithObject:v63];
              [(ICSRecurrenceRule *)v61 setBymonth:v64];

              v65 = MEMORY[0x277CBEA60];
              v160 = [ICSByDayValue alloc];
              v66 = [v45 weekday];
              v67 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v45, "weekdayOrdinal")}];
              v68 = [(ICSByDayValue *)v160 initWithWeekday:v66 number:v67];
              v69 = [v65 arrayWithObject:v68];
              [(ICSRecurrenceRule *)v61 setByday:v69];

              v70 = [MEMORY[0x277CBEA60] arrayWithObjects:{v61, 0}];
              [v156 setRrule:v70];

              [v156 setRdate:0];
            }

            v71 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
            [v25 setTimeZone:v71];

            v72 = v170;
            v19 = v171;
            v24 = obj;
            if (v171)
            {
              v73 = [v25 components:764 fromDate:v171];
            }

            else
            {
              v73 = 0;
            }

            v87 = [(ICSDateTimeValue *)[ICSDateTimeUTCValue alloc] initWithYear:[(ICSDate *)v73 year] month:[(ICSDate *)v73 month] day:[(ICSDate *)v73 day] hour:[(ICSDate *)v73 hour] minute:[(ICSDate *)v73 minute] second:[(ICSDate *)v73 second]];
            v161 = [v156 rrule];
            v95 = [v161 objectAtIndex:0];

            [v95 setUntil:v87];
            goto LABEL_49;
          }
        }

        else
        {

          v48 = v183;
          v30 = v156;
        }
      }

      v183 = v48;
      v74 = off_27A64B680;
      if (!v48)
      {
        v74 = off_27A64B688;
      }

      v75 = objc_alloc_init(*v74);
      if (v48)
      {
        v27 = v75;
      }

      else
      {
        v26 = v75;
      }

      v167 = v27;
      v168 = v26;
      v76 = [ICSDate alloc];
      v77 = [v45 year];
      v78 = [v45 month];
      v79 = [v45 day];
      v80 = [v45 hour];
      v81 = v25;
      v82 = [v45 minute];
      v83 = [v45 second];
      v84 = v79;
      v10 = v162;
      v85 = v82;
      v25 = v81;
      v73 = [(ICSDate *)v76 initWithYear:v77 month:v78 day:v84 hour:v80 minute:v85 second:v83];
      [v75 setDtstart:v73];
      v24 = obj;
      v86 = [MEMORY[0x277CBEA60] arrayWithObject:obj];
      [v75 setTzname:v86];

      [v75 setTzoffsetfrom:v178];
      [v75 setTzoffsetto:v180];
      [v75 addRecurrenceDate:v73];
      v87 = v75;

      [v182 addObject:v87];
      v60 = v30;
      v72 = v170;
      v19 = v171;
LABEL_49:

      v88 = [v45 year];
      v15 = v183;
      v89 = v172;
      if (v183)
      {
        v89 = v176;
      }

      v172 = v89;
      if (v183)
      {
        v90 = v173;
      }

      else
      {
        v90 = v88;
      }

      v91 = v174;
      if (v183)
      {
        v91 = v88;
      }

      v173 = v90;
      v174 = v91;
      v92 = v45;

      v93 = v24;
      v169 = v92;
      v170 = v93;
      v14 = v178;
      a1 = v158;
      v11 = v182;
LABEL_57:
      v12 = [v10 nextDaylightSavingTimeTransitionAfterDate:v186];
      if ([v12 compare:v19] != 1)
      {

        v12 = v19;
        v13 = v180;
        goto LABEL_63;
      }

      v94 = [v12 compare:v166];
      v19 = v12;
      v16 = v15;
      v17 = v14;
      v13 = v180;
      v18 = v180;
      if (v94 != -1)
      {
        goto LABEL_63;
      }
    }

    v30 = 0;
    v41 = v174;
    if (!v183)
    {
      v41 = v173;
    }

    v159 = v41;
LABEL_22:
    [0 day];
    v164 = 0;
    v165 = 0;
    goto LABEL_23;
  }

  v13 = 0;
  v14 = 0;
  LOBYTE(v172) = 0;
  LOBYTE(v15) = 0;
  v169 = 0;
  v170 = 0;
  v167 = 0;
  v168 = 0;
LABEL_63:
  v181 = v13;
  if ((v172 & 1) != 0 && (v15 & 1) == 0)
  {
    [v11 removeAllObjects];
  }

  v177 = v12;
  v179 = v14;
  v184 = v15;

  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  obja = [v11 copy];
  v96 = [obja countByEnumeratingWithState:&v191 objects:v196 count:16];
  if (!v96)
  {
    v98 = 0;
    v99 = 0;
    goto LABEL_91;
  }

  v97 = v96;
  v98 = 0;
  v99 = 0;
  v100 = *v192;
  do
  {
    for (i = 0; i != v97; ++i)
    {
      if (*v192 != v100)
      {
        objc_enumerationMutation(obja);
      }

      v102 = *(*(&v191 + 1) + 8 * i);
      v103 = [v102 rrule];
      v104 = [v103 count];

      if (!v104)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v105 = v99;
        }

        else
        {
          v105 = v98;
        }

        v106 = v105;
        v107 = [v106 rrule];
        v108 = [v107 count];

        if (!v108)
        {
          v109 = [v106 tzoffsetfrom];
          if (v109 == [v102 tzoffsetfrom])
          {
            v110 = [v106 tzoffsetto];
            if (v110 == [v102 tzoffsetto])
            {
              v111 = [v106 tzname];
              v112 = [v102 tzname];
              v187 = [v111 isEqualToArray:v112];

              if (v187)
              {
                v113 = [v102 dtstart];
                [v106 addRecurrenceDate:v113];

                [v182 removeObjectIdenticalTo:v102];
                goto LABEL_87;
              }
            }
          }
        }
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v115 = v102;
      if (isKindOfClass)
      {
        v106 = v99;
      }

      else
      {
        v106 = v98;
      }

      if (isKindOfClass)
      {
        v99 = v115;
      }

      else
      {
        v98 = v115;
      }

LABEL_87:
    }

    v97 = [obja countByEnumeratingWithState:&v191 objects:v196 count:16];
  }

  while (v97);
LABEL_91:

  v116 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v163];
  v117 = [MEMORY[0x277CBEAA8] date];
  v118 = [v116 components:4 fromDate:v117];

  v119 = [v99 rrule];
  v120 = [v119 count];

  v121 = v182;
  if (v120)
  {
    v122 = [v99 rrule];
    v123 = [v122 objectAtIndex:0];

    v124 = [v123 until];
    v125 = [v124 year];
    if (v125 > [v118 year] + 10)
    {
      [v123 setCount:0];
      [v123 setUntil:0];
    }
  }

  v126 = [v98 rrule];
  v127 = [v126 count];

  if (v127)
  {
    v128 = [v98 rrule];
    v129 = [v128 objectAtIndex:0];

    v130 = [v129 until];
    v131 = [v130 year];
    if (v131 > [v118 year] + 10)
    {
      [v129 setCount:0];
      [v129 setUntil:0];
    }
  }

  v132 = [v99 rrule];
  if (![v132 count])
  {
    goto LABEL_109;
  }

  v133 = [v98 rrule];
  v134 = [v133 count];

  if (v134)
  {
    v175 = v118;
    v132 = [v99 rrule];
    v135 = [v132 objectAtIndex:0];
    v136 = [(ICSDate *)v135 until];
    if (!v136)
    {
      goto LABEL_108;
    }

    v137 = v136;
    v138 = [v98 rrule];
    v139 = [v138 objectAtIndex:0];
    v140 = [v139 until];

    v118 = v175;
    if (v140)
    {
      v141 = off_27A64B680;
      if ((v184 & 1) == 0)
      {
        v141 = off_27A64B688;
      }

      v132 = objc_alloc_init(*v141);
      v135 = -[ICSDate initWithYear:month:day:hour:minute:second:]([ICSDate alloc], "initWithYear:month:day:hour:minute:second:", [v169 year], objc_msgSend(v169, "month"), objc_msgSend(v169, "day"), objc_msgSend(v169, "hour"), objc_msgSend(v169, "minute"), objc_msgSend(v169, "second"));
      [v132 setDtstart:v135];
      if (v170)
      {
        v195 = v170;
        v142 = [MEMORY[0x277CBEA60] arrayWithObjects:&v195 count:1];
        [v132 setTzname:v142];
      }

      [v132 setTzoffsetfrom:v179];
      [v132 setTzoffsetto:v181];
      [v182 addObject:v132];
LABEL_108:

      v118 = v175;
LABEL_109:
    }
  }

  if (![v182 count])
  {
    v143 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v163];
    v144 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"UTC"];
    v185 = v143;
    [v143 setTimeZone:v144];

    v145 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
    v146 = [v143 components:252 fromDate:?];
    v188 = v116;
    v147 = v118;
    v148 = -[ICSDate initWithYear:month:day:hour:minute:second:]([ICSDate alloc], "initWithYear:month:day:hour:minute:second:", [v146 year], objc_msgSend(v146, "month"), objc_msgSend(v146, "day"), objc_msgSend(v146, "hour"), objc_msgSend(v146, "minute"), objc_msgSend(v146, "second"));
    v149 = objc_alloc_init(ICSTimeZoneStandardBlock);
    [(ICSTimeZoneBlock *)v149 setDtstart:v148];
    v150 = MEMORY[0x277CBEA60];
    v151 = [v162 abbreviationForDate:v145];
    v152 = [v150 arrayWithObject:v151];
    [(ICSTimeZoneBlock *)v149 setTzname:v152];

    v118 = v147;
    -[ICSTimeZoneBlock setTzoffsetfrom:](v149, "setTzoffsetfrom:", [v162 secondsFromGMTForDate:v157]);
    v116 = v188;
    -[ICSTimeZoneBlock setTzoffsetto:](v149, "setTzoffsetto:", [v162 secondsFromGMTForDate:v157]);
    [v182 addObject:v149];

    v121 = v182;
  }

  v153 = v121;

  v154 = *MEMORY[0x277D85DE8];
  return v121;
}

+ (BOOL)_isTimeZone:(id)a3 pseudoDSTForDate:(id)a4
{
  v5 = a4;
  v6 = [a3 name];
  v7 = [v6 isEqualToString:@"Europe/Moscow"];

  if (v7)
  {
    if (_isTimeZone_pseudoDSTForDate__onceToken != -1)
    {
      +[ICSTimeZone(TimeZoneGeneration) _isTimeZone:pseudoDSTForDate:];
    }

    v8 = [_isTimeZone_pseudoDSTForDate__beginEffectiveDST laterDate:v5];
    if (v8 == v5)
    {
      v9 = [_isTimeZone_pseudoDSTForDate__endEffectiveDST earlierDate:v5];
      LOBYTE(v7) = v9 == v5;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

uint64_t __64__ICSTimeZone_TimeZoneGeneration___isTimeZone_pseudoDSTForDate___block_invoke()
{
  v0 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1301180400.0];
  v1 = _isTimeZone_pseudoDSTForDate__beginEffectiveDST;
  _isTimeZone_pseudoDSTForDate__beginEffectiveDST = v0;

  _isTimeZone_pseudoDSTForDate__endEffectiveDST = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1414274400.0];

  return MEMORY[0x2821F96F8]();
}

- (ICSTimeZone)initWithSystemTimeZone:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICSComponent *)self init];
  if (v5)
  {
    v6 = [v4 name];
    [(ICSTimeZone *)v5 setTzid:v6];

    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    v8 = objc_alloc(MEMORY[0x277CBEA80]);
    v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v10 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
    [v9 setTimeZone:v10];

    [v7 setYear:1900];
    v11 = [v9 dateFromComponents:v7];
    [v7 setYear:2050];
    v12 = [v9 dateFromComponents:v7];
    v13 = [ICSTimeZone blocksAfterDate:v11 untilDate:v12 forTimeZone:v4];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(ICSComponent *)v5 addComponent:*(*(&v20 + 1) + 8 * v17++) withUIDGenerator:0];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (ICSTimeZone)initWithTimeZone:(id)a3 fromDate:(id)a4 options:(int)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v51 = a4;
  v9 = [(ICSComponent *)self init];
  if (v9)
  {
    v10 = [v8 tzid];
    [(ICSTimeZone *)v9 setTzid:v10];

    v53 = [MEMORY[0x277CBEB58] set];
    v52 = a5;
    v48 = v8;
    if (a5 == 1)
    {
      v11 = objc_alloc(MEMORY[0x277CBEA80]);
      v12 = [v11 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
      v13 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
      [v12 setTimeZone:v13];

      v56 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v56 setYear:2050];
      v14 = v12;
      v54 = [v12 dateFromComponents:v56];
      v15 = MEMORY[0x277CBEBB0];
      v16 = [v8 tzid];
      v17 = [v15 timeZoneWithName:v16];

      a5 = 1;
      v18 = objc_opt_new();
      [v18 setYear:{objc_msgSend(v51, "year")}];
      [v18 setMonth:{objc_msgSend(v51, "month")}];
      [v18 setDay:{objc_msgSend(v51, "day")}];
      [v18 setHour:{objc_msgSend(v51, "hour")}];
      [v18 setMinute:{objc_msgSend(v51, "minute")}];
      [v18 setSecond:{objc_msgSend(v51, "second")}];
      [v18 setTimeZone:v17];
      v19 = v14;
      v20 = [v14 dateFromComponents:v18];
      v21 = [(ICSTimeZone *)v9 _previousDSTTransitionForDate:v20 timezone:v17];
      v22 = [v21 dateByAddingTimeInterval:-1.0];
      v23 = [ICSTimeZone blocksAfterDate:v22 untilDate:v54 forTimeZone:v17];

      v24 = 1;
    }

    else
    {
      v23 = [v8 components];
      v24 = -1;
    }

    if ([v23 count])
    {
      v25 = 0;
      v55 = 0;
      v57 = 0;
      v26 = 0x27A64B000;
      v50 = v24;
      while (1)
      {
        v27 = [v23 objectAtIndex:v25];
        if (++v25 >= [v23 count])
        {
          v32 = 0;
        }

        else
        {
          v28 = v25;
          while (1)
          {
            v29 = objc_opt_class();
            v30 = [v23 objectAtIndex:v28];
            v31 = objc_opt_class();

            if (v29 == v31)
            {
              break;
            }

            if (++v28 >= [v23 count])
            {
              v32 = 0;
              goto LABEL_14;
            }
          }

          v33 = [v23 objectAtIndex:v28];
          v34 = [v33 dtstart];
          v32 = [v34 value];

LABEL_14:
          v26 = 0x27A64B000uLL;
        }

        v35 = *(v26 + 1400);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = [objc_alloc(*(v26 + 1400)) initWithYear:objc_msgSend(v32 month:"year") day:objc_msgSend(v32 hour:"month") minute:objc_msgSend(v32 second:{"day"), objc_msgSend(v32, "hour"), objc_msgSend(v32, "minute"), objc_msgSend(v32, "second")}];
          v37 = v36;
          if (v36)
          {
            a5 = v52;
            v24 = v50;
            v26 = 0x27A64B000;
            if ([v36 compare:v51] != 1)
            {
              goto LABEL_35;
            }
          }

          else
          {
            a5 = v52;
            v24 = v50;
            v26 = 0x27A64B000;
          }
        }

        else
        {
          v37 = 0;
        }

        if (a5 == 2)
        {
          [v53 addObject:v27];
          goto LABEL_35;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_30;
        }

        v39 = v57;
        if (v57 < v24)
        {
          ++v57;
LABEL_29:
          [v53 addObject:v27];
LABEL_30:
          v39 = v57;
        }

        v38 = v55;
LABEL_33:
        v55 = v38;
        v57 = v39;
        if (v38 == v24 && v39 == v24)
        {

          goto LABEL_38;
        }

LABEL_35:

        if (v25 >= [v23 count])
        {
          goto LABEL_38;
        }
      }

      v38 = v55;
      if (v55 >= v24)
      {
        v39 = v57;
        goto LABEL_33;
      }

      ++v55;
      goto LABEL_29;
    }

LABEL_38:
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v40 = [v53 allObjects];
    v41 = [v40 sortedArrayUsingSelector:sel_compare_];

    v42 = [v41 countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v59;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v59 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [(ICSComponent *)v9 addComponent:*(*(&v58 + 1) + 8 * i) withUIDGenerator:0];
        }

        v43 = [v41 countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v43);
    }

    v8 = v49;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_previousDSTTransitionForDate:(id)a3 timezone:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277CBEA80]);
  v8 = [v7 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  [v8 setTimeZone:v6];
  v9 = [v8 dateByAddingUnit:4 value:-1 toDate:v5 options:1];
  v10 = [v8 timeZone];
  v11 = [v10 nextDaylightSavingTimeTransitionAfterDate:v9];

  v12 = v11;
  v13 = [v12 earlierDate:v5];
  v14 = [v13 isEqualToDate:v12];

  v15 = v12;
  if (!v14)
  {
    goto LABEL_4;
  }

  do
  {
    v16 = v12;
    v12 = v15;

    v17 = [v8 timeZone];
    v15 = [v17 nextDaylightSavingTimeTransitionAfterDate:v12];

    v18 = [v15 earlierDate:v5];
    v19 = [v18 isEqualToDate:v15];
  }

  while ((v19 & 1) != 0);
  if ((v14 & 1) == 0)
  {
LABEL_4:
    v20 = [v8 components:252 fromDate:v5];
    [v20 setMonth:1];
    [v20 setDay:1];
    v21 = [v8 dateFromComponents:v20];
    v22 = [v8 timeZone];
    v23 = [v22 nextDaylightSavingTimeTransitionAfterDate:v21];

    v12 = v23;
  }

  return v12;
}

+ (id)timeZoneWithSystemTimeZoneName:(id)a3
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v6 = _sCache;
  if (!_sCache)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = _sCache;
    _sCache = v7;

    v6 = _sCache;
  }

  v9 = [v6 objectForKey:v4];
  if (!v9)
  {
    v10 = [ICSTimeZone alloc];
    v11 = [MEMORY[0x277CBEBB0] timeZoneWithName:v4];
    v9 = [(ICSTimeZone *)v10 initWithSystemTimeZone:v11];

    [_sCache setObject:v9 forKey:v4];
  }

  objc_sync_exit(v5);

  return v9;
}

- (BOOL)isEqualToNSTimeZone:(id)a3 forDate:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = a4;
    v25 = self;
    v8 = -[ICSDateTimeValue initWithYear:month:day:hour:minute:second:]([ICSDateTimeValue alloc], "initWithYear:month:day:hour:minute:second:", [v7 year] - 1, objc_msgSend(v7, "month"), objc_msgSend(v7, "day"), objc_msgSend(v7, "hour"), objc_msgSend(v7, "minute"), objc_msgSend(v7, "second"));
    v9 = [ICSDateTimeValue alloc];
    v10 = [v7 year];
    v11 = [v7 month];
    v12 = [v7 day];
    v13 = [v7 hour];
    v14 = [v7 minute];
    v15 = [v7 second];

    v16 = [(ICSDateTimeValue *)v9 initWithYear:v10 + 1 month:v11 day:v12 hour:v13 minute:v14 second:v15];
    v17 = [(ICSTimeZone *)v25 computeTimeZoneChangeListFromDate:v8 toDate:v16];
    v18 = [v6 ICSComputeTimeZoneChangeListFromDate:v8 toDate:v16];
    v19 = [v18 ICSContainsArray:v17];
    if ((v19 & 1) == 0)
    {
      v20 = logHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23 = [v6 name];
        v24 = [(ICSComponent *)v25 ICSStringWithOptions:0];
        *buf = 138413570;
        v27 = v23;
        v28 = 2112;
        v29 = v8;
        v30 = 2112;
        v31 = v16;
        v32 = 2112;
        v33 = v17;
        v34 = 2112;
        v35 = v18;
        v36 = 2112;
        v37 = v24;
        _os_log_error_impl(&dword_2754C5000, v20, OS_LOG_TYPE_ERROR, "VTIMEZONE does not match System Time Zone (%@) for %@ to %@: %@ != %@\n\n%@", buf, 0x3Eu);
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)getNSTimeZoneFromDate:(id)a3 toDate:(id)a4
{
  v93 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v54 = a4;
  v55 = self;
  v6 = [(ICSTimeZone *)self tzid];
  v7 = [MEMORY[0x277CBEBB0] timeZoneWithName:v6];
  if (v7 && [v6 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v7;
    v15 = v12;
    goto LABEL_40;
  }

  v8 = [(ICSTimeZone *)self computeTimeZoneChangeListFromDate:v53 toDate:v54];
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy_;
  v78 = __Block_byref_object_dispose_;
  v79 = 0;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __54__ICSTimeZone_Internal__getNSTimeZoneFromDate_toDate___block_invoke;
  v68[3] = &unk_27A64C2B0;
  v9 = v53;
  v69 = v9;
  v10 = v54;
  v70 = v10;
  v71 = self;
  v52 = v8;
  v72 = v52;
  v73 = &v74;
  v11 = MEMORY[0x277C799E0](v68);
  v12 = [MEMORY[0x277CBEBB0] systemTimeZone];

  if (!(v11)[2](v11, v12))
  {
    v16 = [(ICSTimeZone *)self tzid];
    v17 = v16 == 0;

    if (v17)
    {
      v14 = v6;
    }

    else
    {
      v18 = [(ICSTimeZone *)v55 tzid];
      v14 = [ICSTimeZoneTranslator timeZoneNameForNonstandardTimeZone:v18];

      if (v14)
      {
        v19 = [MEMORY[0x277CBEBB0] timeZoneWithName:v14];

        if (v19)
        {
          if (((v11)[2](v11, v19) & 1) == 0)
          {
            v20 = logHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v50 = [(ICSComponent *)v55 ICSStringWithOptions:0];
              *buf = 138413314;
              v84 = v14;
              v85 = 2112;
              v86 = v9;
              v87 = 2112;
              v88 = v10;
              v89 = 2112;
              v90 = v52;
              v91 = 2112;
              v92 = v50;
              _os_log_error_impl(&dword_2754C5000, v20, OS_LOG_TYPE_ERROR, "VTIMEZONE does not match System Time Zone (%@) for %@ to %@: %@\n\n%@", buf, 0x34u);
            }
          }

          v13 = v19;
          v12 = v13;
          goto LABEL_5;
        }

        v12 = 0;
      }
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v21 = [objc_opt_class() quickTimeZoneNames];
    v22 = [v21 countByEnumeratingWithState:&v64 objects:v82 count:16];
    if (v22)
    {
      v23 = *v65;
      while (2)
      {
        v24 = 0;
        v25 = v12;
        v26 = v14;
        do
        {
          if (*v65 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v14 = *(*(&v64 + 1) + 8 * v24);

          v12 = [MEMORY[0x277CBEBB0] timeZoneWithName:v14];

          if ((v11)[2](v11, v12))
          {
            v12 = v12;

            goto LABEL_38;
          }

          ++v24;
          v25 = v12;
          v26 = v14;
        }

        while (v22 != v24);
        v22 = [v21 countByEnumeratingWithState:&v64 objects:v82 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v27 = [objc_opt_class() slowTimeZoneNames];
    v28 = [v27 countByEnumeratingWithState:&v60 objects:v81 count:16];
    if (v28)
    {
      v14 = 0;
      v29 = *v61;
      while (2)
      {
        v30 = 0;
        v31 = v12;
        v32 = v14;
        do
        {
          if (*v61 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v14 = *(*(&v60 + 1) + 8 * v30);

          v12 = [MEMORY[0x277CBEBB0] timeZoneWithName:v14];

          if ((v11)[2](v11, v12))
          {
            v12 = v12;

            goto LABEL_38;
          }

          ++v30;
          v31 = v12;
          v32 = v14;
        }

        while (v28 != v30);
        v28 = [v27 countByEnumeratingWithState:&v60 objects:v81 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    v33 = v75[5];
    if (v33)
    {
      v15 = v33;
      v14 = 0;
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v36 = [objc_opt_class() quickTimeZoneNames];
      v37 = [objc_opt_class() slowTimeZoneNames];
      obj = [v36 arrayByAddingObjectsFromArray:v37];

      v38 = [obj countByEnumeratingWithState:&v56 objects:v80 count:16];
      if (v38)
      {
        v14 = 0;
        v39 = *v57;
        while (2)
        {
          v40 = v38;
          v41 = 0;
          v42 = v12;
          v43 = v14;
          do
          {
            if (*v57 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v56 + 1) + 8 * v41);

            v12 = [MEMORY[0x277CBEBB0] timeZoneWithName:v14];

            v44 = [MEMORY[0x277CBEAF8] currentLocale];
            v45 = [v12 localizedName:0 locale:v44];
            v46 = [(ICSTimeZone *)v55 tzid];
            v47 = [v45 isEqualToString:v46];

            if (v47)
            {
              v12 = v12;

              goto LABEL_38;
            }

            ++v41;
            v42 = v12;
            v43 = v14;
          }

          while (v40 != v41);
          v38 = [obj countByEnumeratingWithState:&v56 objects:v80 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      if ([v52 count] == 1)
      {
        v48 = [v52 objectAtIndex:0];
        v49 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:{objc_msgSend(v48, "tzOffsetTo")}];

        v12 = v49;
        v14 = 0;
LABEL_38:
        v15 = v12;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }
    }

    goto LABEL_39;
  }

  v13 = v12;
  v12 = v13;
  v14 = v6;
LABEL_5:
  v15 = v13;
LABEL_39:

  _Block_object_dispose(&v74, 8);
  v6 = v14;
LABEL_40:

  v34 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __54__ICSTimeZone_Internal__getNSTimeZoneFromDate_toDate___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 ICSComputeTimeZoneChangeListFromDate:a1[4] toDate:a1[5]];
    v7 = a1[6];
    v8 = [objc_opt_class() matchTypeForSubarray:a1[7] inTZChangeArray:v6];
    if (v8 == 2)
    {
      v12 = 1;
    }

    else
    {
      if (v8 == 1)
      {
        v9 = *(a1[8] + 8);
        v11 = *(v9 + 40);
        v10 = (v9 + 40);
        if (!v11)
        {
          objc_storeStrong(v10, a2);
        }
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)quickTimeZoneNames
{
  if (quickTimeZoneNames_onceToken != -1)
  {
    +[ICSTimeZone(Internal) quickTimeZoneNames];
  }

  v3 = quickTimeZoneNames__quickTimeZoneNames;

  return v3;
}

void __43__ICSTimeZone_Internal__quickTimeZoneNames__block_invoke()
{
  v0 = quickTimeZoneNames__quickTimeZoneNames;
  quickTimeZoneNames__quickTimeZoneNames = &unk_288428320;
}

+ (id)slowTimeZoneNames
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ICSTimeZone_Internal__slowTimeZoneNames__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (slowTimeZoneNames_onceToken != -1)
  {
    dispatch_once(&slowTimeZoneNames_onceToken, block);
  }

  v2 = slowTimeZoneNames__slowTimeZones;

  return v2;
}

void __42__ICSTimeZone_Internal__slowTimeZoneNames__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = [*(a1 + 32) quickTimeZoneNames];
  v3 = [v1 setWithArray:v2];

  v4 = [MEMORY[0x277CBEBB0] knownTimeZoneNames];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ICSTimeZone_Internal__slowTimeZoneNames__block_invoke_2;
  v9[3] = &unk_27A64C2D8;
  v10 = v3;
  v5 = v3;
  v6 = [v4 indexesOfObjectsPassingTest:v9];
  v7 = [v4 objectsAtIndexes:v6];
  v8 = slowTimeZoneNames__slowTimeZones;
  slowTimeZoneNames__slowTimeZones = v7;
}

- (id)getNSTimeZone:(id)a3
{
  v4 = a3;
  v5 = -[ICSDateTimeValue initWithYear:month:day:hour:minute:second:]([ICSDateTimeValue alloc], "initWithYear:month:day:hour:minute:second:", [v4 year] - 1, objc_msgSend(v4, "month"), objc_msgSend(v4, "day"), objc_msgSend(v4, "hour"), objc_msgSend(v4, "minute"), objc_msgSend(v4, "second"));
  v6 = [ICSDateTimeValue alloc];
  v7 = [v4 year];
  v8 = [v4 month];
  v9 = [v4 day];
  v10 = [v4 hour];
  v11 = [v4 minute];
  v12 = [v4 second];

  v13 = [(ICSDateTimeValue *)v6 initWithYear:v7 + 1 month:v8 day:v9 hour:v10 minute:v11 second:v12];
  v14 = [(ICSTimeZone *)self getNSTimeZoneFromDate:v5 toDate:v13];

  return v14;
}

+ (BOOL)perfectMatchForSubarray:(id)a3 inTZChangeArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] && (v7 = objc_msgSend(v5, "count"), v7 <= objc_msgSend(v6, "count")) && (objc_msgSend(v5, "objectAtIndex:", 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v6, "indexOfObject:", v8), v8, v9 != 0x7FFFFFFFFFFFFFFFLL) && (v10 = objc_msgSend(v5, "count") + v9, v10 <= objc_msgSend(v6, "count")))
  {
    if ([v5 count] >= 2)
    {
      v13 = 1;
      do
      {
        v14 = [v5 objectAtIndex:v13];
        v15 = [v6 objectAtIndex:v9 + v13];
        v11 = [v14 isEqual:v15];

        if ((v11 & 1) == 0)
        {
          break;
        }

        ++v13;
      }

      while (v13 < [v5 count]);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (int64_t)matchTypeForSubarray:(id)a3 inTZChangeArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 perfectMatchForSubarray:v6 inTZChangeArray:v7])
  {
    v8 = 2;
  }

  else
  {
    v9 = [v7 objectAtIndexedSubscript:0];
    v10 = [v9 tzOffsetTo];

    v11 = [v6 objectAtIndexedSubscript:0];
    v12 = [v11 tzOffsetTo];

    if ([v7 count])
    {
      v13 = 0;
      v14 = 0;
      LOBYTE(v15) = 0;
      v16 = 0;
      do
      {
        v17 = [v7 objectAtIndexedSubscript:v13];
        v18 = v17;
        v15 = v15 || [v17 tzOffsetTo] != v10;
        if (v14 < [v6 count])
        {
          v19 = [v6 objectAtIndexedSubscript:v14];
          if ([v18 isCloseTo:v19])
          {
            ++v14;
            v16 = v16 || [v19 tzOffsetTo] != v12;
          }

          else if (v14)
          {

            goto LABEL_18;
          }
        }

        ++v13;
      }

      while (v13 < [v7 count]);
      v8 = (v14 != 0) & (v16 ^ v15 ^ 1u);
    }

    else
    {
LABEL_18:
      v8 = 0;
    }
  }

  return v8;
}

- (id)computeTimeZoneChangeListFromDate:(id)a3 toDate:(id)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v58 = a4;
  v6 = [MEMORY[0x277CBEB18] array];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v55 = self;
  obj = [(ICSComponent *)self components];
  v7 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v78;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v78 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v77 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 computeTimeZoneChangeListFromDate:v57 toDate:v58];
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v73 objects:v84 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v74;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v74 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v73 + 1) + 8 * j);
                if (([v6 containsObject:v17] & 1) == 0)
                {
                  [v6 addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v73 objects:v84 count:16];
            }

            while (v14);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
    }

    while (v8);
  }

  if (![v6 count])
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v18 = [(ICSComponent *)v55 components];
    v19 = [v18 countByEnumeratingWithState:&v69 objects:v83 count:16];
    if (v19)
    {
      v20 = v19;
      obja = 0;
      v21 = 0;
      v22 = *v70;
      v23 = 0x27A64B000uLL;
      v51 = *v70;
      v52 = v18;
      do
      {
        v24 = 0;
        v53 = v20;
        do
        {
          if (*v70 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v69 + 1) + 8 * v24);
          v26 = *(v23 + 1648);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [v25 dtstart];
            v28 = [v27 value];

            if ([v28 compare:v58] == -1)
            {
              v54 = v28;
              if (!v21 || [v28 compare:v21] == 1)
              {
                v29 = v28;

                obja = [v25 tzoffsetto];
                v21 = v29;
              }

              v56 = v24;
              v67 = 0u;
              v68 = 0u;
              v65 = 0u;
              v66 = 0u;
              v30 = [v25 rrule];
              v31 = [v30 countByEnumeratingWithState:&v65 objects:v82 count:16];
              if (v31)
              {
                v32 = v31;
                v33 = *v66;
                do
                {
                  for (k = 0; k != v32; ++k)
                  {
                    if (*v66 != v33)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v35 = *(*(&v65 + 1) + 8 * k);
                    v36 = [v35 until];
                    v37 = [v36 compare:v21];

                    if (v37 == 1)
                    {
                      v38 = [v35 until];

                      obja = [v25 tzoffsetto];
                      v21 = v38;
                    }
                  }

                  v32 = [v30 countByEnumeratingWithState:&v65 objects:v82 count:16];
                }

                while (v32);
              }

              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v39 = [v25 rdate];
              v40 = [v39 countByEnumeratingWithState:&v61 objects:v81 count:16];
              if (v40)
              {
                v41 = v40;
                v42 = *v62;
                do
                {
                  for (m = 0; m != v41; ++m)
                  {
                    if (*v62 != v42)
                    {
                      objc_enumerationMutation(v39);
                    }

                    v44 = *(*(&v61 + 1) + 8 * m);
                    v45 = [v44 value];
                    v46 = [v45 compare:v21];

                    if (v46 == 1)
                    {
                      v47 = [v44 value];

                      obja = [v25 tzoffsetto];
                      v21 = v47;
                    }
                  }

                  v41 = [v39 countByEnumeratingWithState:&v61 objects:v81 count:16];
                }

                while (v41);
              }

              v22 = v51;
              v18 = v52;
              v23 = 0x27A64B000;
              v20 = v53;
              v28 = v54;
              v24 = v56;
            }
          }

          ++v24;
        }

        while (v24 != v20);
        v20 = [v18 countByEnumeratingWithState:&v69 objects:v83 count:16];
      }

      while (v20);
    }

    else
    {
      obja = 0;
      v21 = 0;
    }

    v48 = [[ICSTimeZoneChange alloc] initWithTimeInterval:obja tzOffsetTo:0.0];
    [v6 addObject:v48];
  }

  [v6 sortUsingSelector:{sel_compare_, v51, v52}];

  v49 = *MEMORY[0x277D85DE8];

  return v6;
}

@end