@interface PKBoardingPassFaceBucketsFactory
- (PKBoardingPassFaceBucketsFactory)initWithPass:(id)a3 state:(id)a4;
- (id)_badgeFields;
- (id)auxiliaryFields;
- (id)headerFields;
- (id)primaryFields;
- (id)secondaryFields;
@end

@implementation PKBoardingPassFaceBucketsFactory

- (PKBoardingPassFaceBucketsFactory)initWithPass:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PKBoardingPassFaceBucketsFactory;
  v8 = [(PKBoardingPassFaceBucketsFactory *)&v12 init];
  if (v8)
  {
    v9 = PKResolvedBoardingPassSemantics();
    resolvedSemantics = v8->_resolvedSemantics;
    v8->_resolvedSemantics = v9;
  }

  return v8;
}

- (id)headerFields
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBD38]];
  v4 = [v3 stringValue];

  v5 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBCD0]];
  v6 = [v5 numberValue];

  v7 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBC70]];
  v8 = [v7 dateValue];

  v9 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBC48]];
  v10 = [v9 dateValue];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  resolvedSemantics = self->_resolvedSemantics;
  v13 = *MEMORY[0x1E69BBF70];
  v14 = v11;
  v15 = [(NSDictionary *)resolvedSemantics objectForKey:v13];
  v16 = [v15 timeZoneValue];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBF68]];
    v18 = [v19 timeZoneValue];
  }

  v20 = PKMediumDayAndMonthStringFromDate(v14, v18);

  v21 = *MEMORY[0x1E69BBE28];
  v22 = [v20 pk_uppercaseStringForPreferredLocale];
  PassField = createPassField(0, v21, v22);

  v24 = MEMORY[0x1E696AEC0];
  v25 = [v4 pk_uppercaseStringForPreferredLocale];
  v26 = [v24 stringWithFormat:@"%@ %lu", v25, objc_msgSend(v6, "integerValue")];
  [PassField setLabel:v26];

  v29[0] = PassField;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];

  return v27;
}

- (id)primaryFields
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = *MEMORY[0x1E69BBD88];
  v5 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBD88]];
  v6 = [v5 stringValue];

  v7 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBD98]];
  v8 = [v7 stringValue];

  v54 = v6;
  v9 = [v6 pk_uppercaseStringForPreferredLocale];
  PassField = createPassField(1, v4, v9);

  v53 = v8;
  v11 = [v8 pk_uppercaseStringForPreferredLocale];
  [PassField setLabel:v11];

  v52 = v3;
  [v3 addObject:PassField];
  v12 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBC70]];
  v56 = [v12 dateValue];

  v13 = *MEMORY[0x1E69BBC48];
  v14 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBC48]];
  v15 = [v14 dateValue];

  v16 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBC60]];
  v51 = [v16 dateValue];

  v50 = *MEMORY[0x1E69BBC38];
  v17 = [(NSDictionary *)self->_resolvedSemantics objectForKey:?];
  v18 = [v17 dateValue];

  v19 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBF70]];
  v20 = [v19 timeZoneValue];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v23 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBF68]];
    v24 = [v23 timeZoneValue];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = [MEMORY[0x1E695DFE8] localTimeZone];
    }

    v22 = v26;
  }

  v27 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBF80]];
  v28 = [v27 timeZoneValue];
  v29 = v28;
  v55 = v22;
  if (v28)
  {
    v49 = v28;
  }

  else
  {
    v30 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBF78]];
    v31 = [v30 timeZoneValue];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = [MEMORY[0x1E695DFE8] localTimeZone];
    }

    v49 = v33;

    v22 = v55;
  }

  if (v15 != 0 && v18 != 0)
  {
    v34 = v15;
  }

  else
  {
    v34 = v56;
  }

  if (v15 != 0 && v18 != 0)
  {
    v35 = v18;
  }

  else
  {
    v35 = v51;
  }

  v36 = PKTimeStringFromDate(v34, v22);
  v37 = createPassField(1, v13, v36);

  [v52 addObject:v37];
  v38 = *MEMORY[0x1E69BBDC8];
  v39 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBDC8]];
  v40 = [v39 stringValue];

  v41 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBDD8]];
  v42 = [v41 stringValue];

  v43 = [v40 pk_uppercaseStringForPreferredLocale];
  v44 = createPassField(1, v38, v43);

  v45 = [v42 pk_uppercaseStringForPreferredLocale];
  [v44 setLabel:v45];

  [v52 addObject:v44];
  v46 = PKTimeStringFromDate(v35, v49);
  v47 = createPassField(1, v50, v46);

  [v52 addObject:v47];

  return v52;
}

- (id)secondaryFields
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = *MEMORY[0x1E69BBCE8];
  v5 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBCE8]];
  v6 = [v5 personNameComponentsValue];

  v7 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v6 style:3 options:0];
  v8 = [v7 pk_uppercaseStringForPreferredLocale];
  PassField = createPassField(2, v4, v8);

  [v3 addObject:PassField];
  v10 = [(PKBoardingPassFaceBucketsFactory *)self _badgeFields];
  [v3 addObjectsFromArray:v10];

  return v3;
}

- (id)auxiliaryFields
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBC40]];
  v5 = [v4 dateValue];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBC68]];
    v6 = [v7 dateValue];

    if (!v6)
    {
      v15 = *MEMORY[0x1E69BBDC0];
      goto LABEL_8;
    }
  }

  v8 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBF70]];
  v9 = [v8 timeZoneValue];

  v10 = PKTimeStringFromDate(v6, v9);
  v11 = [v10 pk_uppercaseStringForPreferredLocale];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = PKLocalizedFlightString(&cfstr_FlightDetailVa.isa);
  }

  v14 = v13;

  v15 = *MEMORY[0x1E69BBDC0];
  PassField = createPassField(3, *MEMORY[0x1E69BBDC0], v14);
  v17 = PKLocalizedFlightString(&cfstr_FlightDetailLa_8.isa);
  [PassField setLabel:v17];

  [PassField setTextAlignment:0];
  [v3 addObject:PassField];

LABEL_8:
  v18 = [(NSDictionary *)self->_resolvedSemantics objectForKey:v15];
  v19 = [v18 stringValue];

  if ([v19 length])
  {
    [v19 pk_uppercaseStringForPreferredLocale];
  }

  else
  {
    PKLocalizedFlightString(&cfstr_FlightDetailVa.isa);
  }
  v20 = ;
  v21 = createPassField(3, v15, v20);
  v22 = PKLocalizedFlightString(&cfstr_FlightDetailLa_7.isa);
  [v21 setLabel:v22];

  v23 = PKLocalizedFlightString(&cfstr_FlightDetailLa_9.isa);
  [v21 setAccessibilityLabel:v23];

  [v21 setTextAlignment:1];
  [v3 addObject:v21];

  v24 = *MEMORY[0x1E69BBDA0];
  v25 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBDA0]];
  v26 = [v25 stringValue];

  if ([v26 length])
  {
    [v26 pk_uppercaseStringForPreferredLocale];
  }

  else
  {
    PKLocalizedFlightString(&cfstr_FlightDetailVa.isa);
  }
  v27 = ;
  v28 = createPassField(3, v24, v27);
  v29 = PKLocalizedFlightString(&cfstr_FlightDetailLa_6.isa);
  [v28 setLabel:v29];

  [v28 setTextAlignment:1];
  [v3 addObject:v28];

  v30 = *MEMORY[0x1E69BBD60];
  v31 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBD60]];
  v32 = [v31 stringValue];

  v33 = *MEMORY[0x1E69BBD70];
  v34 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBD70]];
  v35 = [v34 stringValue];

  if ([v32 length])
  {
    v36 = @"FLIGHT_DETAIL_LABEL_BOARDING_GROUP";
    v37 = v32;
  }

  else
  {
    if (![v35 length])
    {
      goto LABEL_19;
    }

    v36 = @"FLIGHT_DETAIL_LABEL_BOARDING_ZONE";
    v37 = v35;
    v30 = v33;
  }

  v38 = [v37 pk_uppercaseStringForPreferredLocale];
  v39 = createPassField(3, v30, v38);

  v40 = PKLocalizedFlightString(&v36->isa);
  [v39 setLabel:v40];

  [v39 setTextAlignment:1];
  [v3 addObject:v39];

LABEL_19:
  v41 = *MEMORY[0x1E69BBCB0];
  v42 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBCB0]];
  v43 = [objc_alloc(MEMORY[0x1E69B91D8]) initFromSemantic:v42];
  v44 = [v43 firstSeatContainingAttributes:3];
  v45 = [v44 airlineSeat];
  if ([v45 length])
  {
    v46 = [v45 pk_uppercaseStringForPreferredLocale];
    v47 = createPassField(3, v41, v46);

    v48 = PKLocalizedFlightString(&cfstr_FlightDetailLa_2.isa);
    [v47 setLabel:v48];

    [v47 setTextAlignment:1];
    [v3 addObject:v47];
  }

  if ([v3 count] <= 4)
  {
    v49 = *MEMORY[0x1E69BBD68];
    v50 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBD68]];
    v51 = [v50 stringValue];

    if ([v51 length])
    {
      v59 = [v51 pk_uppercaseStringForPreferredLocale];
      v52 = createPassField(3, v49, v59);
      PKLocalizedFlightString(&cfstr_FlightDetailLa_10.isa);
      v53 = v3;
      v54 = v32;
      v56 = v55 = v35;
      [v52 setLabel:v56];

      v57 = PKLocalizedFlightString(&cfstr_FlightDetailLa_11.isa);
      [v52 setAccessibilityLabel:v57];

      v35 = v55;
      v32 = v54;
      v3 = v53;
      [v52 setTextAlignment:1];
      [v53 addObject:v52];
    }
  }

  return v3;
}

- (id)_badgeFields
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBCD8]];
  v5 = [v4 numberValue];

  v83 = v5;
  if ([v5 BOOLValue])
  {
    v6 = *MEMORY[0x1E69BBE50];
    v7 = [(NSDictionary *)self->_resolvedSemantics objectForKey:v6];
    v8 = [v7 stringValue];

    if (v8)
    {
      v9 = [v8 pk_uppercaseStringForPreferredLocale];
      PassField = createPassField(2, v6, v9);

      [v3 addObject:PassField];
    }
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  v11 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBF28]];
  v12 = [v11 stringsValue];
  v13 = [v12 mutableCopy];

  v14 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBF30]];
  v15 = [v14 stringsValue];
  [v13 addObjectsFromArray:v15];

  v16 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBF48]];
  v17 = [v16 stringsValue];

  if ([v17 count])
  {
    v18 = PKTransitSecurityProgramsFromStrings();
    v19 = PKTransitSecurityProgramsFromStrings();
    v20 = v19 & v18;
    if ((v19 & v18 & 4) != 0)
    {
      v65 = PKLocalizedFlightString(&cfstr_PassSecurityBa.isa);
      v66 = createPassField(2, @"departureAirportEligibleSecurityPrograms.oss", v65);

      [v3 addObject:v66];
      if ((v20 & 8) == 0)
      {
LABEL_8:
        if ((v20 & 0x10) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v19 & v18 & 8) == 0)
    {
      goto LABEL_8;
    }

    v67 = PKLocalizedFlightString(&cfstr_PassSecurityBa_0.isa);
    v68 = createPassField(2, @"departureAirportEligibleSecurityPrograms.iti", v67);

    [v3 addObject:v68];
    if ((v20 & 0x10) != 0)
    {
LABEL_9:
      v21 = PKLocalizedFlightString(&cfstr_PassSecurityBa_1.isa);
      v22 = createPassField(2, @"departureAirportEligibleSecurityPrograms.itd", v21);

      [v3 addObject:v22];
    }
  }

LABEL_10:
  v23 = *MEMORY[0x1E69BBE78];

  v24 = [(NSDictionary *)self->_resolvedSemantics objectForKey:v23];
  v25 = [v24 stringValue];

  if (v25)
  {
    v26 = [v25 pk_uppercaseStringForPreferredLocale];
    v27 = createPassField(2, v23, v26);

    [v3 addObject:v27];
  }

  v28 = *MEMORY[0x1E69BBE80];
  v29 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBE80]];
  v30 = [v29 stringValue];

  if (v30)
  {
    v31 = [v30 pk_uppercaseStringForPreferredLocale];
    v32 = createPassField(2, v28, v31);

    [v3 addObject:v32];
  }

  v33 = *MEMORY[0x1E69BBE98];
  v34 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBE98]];
  v35 = [v34 stringValue];

  if (v35)
  {
    v36 = [v35 pk_uppercaseStringForPreferredLocale];
    v37 = createPassField(2, v33, v36);

    [v3 addObject:v37];
  }

  v38 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBF40]];
  v39 = [v38 stringsValue];

  if ([v39 count])
  {
    v40 = PKPassengerCapabilitiesFromStrings();
    if ((v40 & 4) != 0)
    {
      v41 = PKLocalizedFlightString(&cfstr_PassCapability.isa);
      v42 = createPassField(2, @"passengerCapabilities.preboarding", v41);

      [v3 addObject:v42];
    }

    if ((v40 & 2) != 0)
    {
      v43 = PKLocalizedFlightString(&cfstr_PassCapability_0.isa);
      v44 = createPassField(2, @"passengerCapabilities.carryon", v43);

      [v3 addObject:v44];
    }
  }

  v45 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBF58]];
  v46 = [v45 stringsValue];

  if (![v46 count])
  {
    goto LABEL_34;
  }

  v47 = PKIATAServiceSSRCodesFromStrings();
  v48 = v47;
  if ((v47 & 0x40) != 0)
  {
    v69 = createPassField(2, @"passengerServiceSSRs.WCBD", @"WCBD");
    [v3 addObject:v69];

    if ((v48 & 0x80) == 0)
    {
LABEL_24:
      if ((v48 & 0x100) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }
  }

  else if ((v47 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  v70 = createPassField(2, @"passengerServiceSSRs.WCBW", @"WCBW");
  [v3 addObject:v70];

  if ((v48 & 0x100) == 0)
  {
LABEL_25:
    if ((v48 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  v71 = createPassField(2, @"passengerServiceSSRs.WCHC", @"WCHC");
  [v3 addObject:v71];

  if ((v48 & 0x200) == 0)
  {
LABEL_26:
    if ((v48 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_50;
  }

LABEL_49:
  v72 = createPassField(2, @"passengerServiceSSRs.WCHR", @"WCHR");
  [v3 addObject:v72];

  if ((v48 & 0x400) == 0)
  {
LABEL_27:
    if ((v48 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_51;
  }

LABEL_50:
  v73 = createPassField(2, @"passengerServiceSSRs.WCHS", @"WCHS");
  [v3 addObject:v73];

  if ((v48 & 0x800) == 0)
  {
LABEL_28:
    if ((v48 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_52;
  }

LABEL_51:
  v74 = createPassField(2, @"passengerServiceSSRs.WCLB", @"WCLB");
  [v3 addObject:v74];

  if ((v48 & 0x1000) == 0)
  {
LABEL_29:
    if ((v48 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_53;
  }

LABEL_52:
  v75 = createPassField(2, @"passengerServiceSSRs.WCMP", @"WCMP");
  [v3 addObject:v75];

  if ((v48 & 0x2000) == 0)
  {
LABEL_30:
    if ((v48 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_54;
  }

LABEL_53:
  v76 = createPassField(2, @"passengerServiceSSRs.WCOB", @"WCOB");
  [v3 addObject:v76];

  if ((v48 & 0x10) == 0)
  {
LABEL_31:
    if ((v48 & 8) == 0)
    {
      goto LABEL_32;
    }

LABEL_55:
    v79 = PKLocalizedFlightString(&cfstr_PassServiceBad_0.isa);
    v80 = createPassField(2, @"passengerServiceSSRs.PETC", v79);

    [v3 addObject:v80];
    if ((v48 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_54:
  v77 = PKLocalizedFlightString(&cfstr_PassServiceBad.isa);
  v78 = createPassField(2, @"passengerServiceSSRs.SVAN", v77);

  [v3 addObject:v78];
  if ((v48 & 8) != 0)
  {
    goto LABEL_55;
  }

LABEL_32:
  if ((v48 & 0x20) != 0)
  {
LABEL_33:
    v49 = PKLocalizedFlightString(&cfstr_PassServiceBad_1.isa);
    v50 = createPassField(2, @"passengerServiceSSRs.UMNR", v49);

    [v3 addObject:v50];
  }

LABEL_34:
  v51 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBF50]];
  v52 = [v51 stringsValue];

  if ([v52 count] && (PKIATAInformationSSRCodesFromStrings() & 1) != 0)
  {
    v53 = objc_alloc(MEMORY[0x1E69B91D8]);
    v54 = [(NSDictionary *)self->_resolvedSemantics objectForKey:*MEMORY[0x1E69BBCB0]];
    v82 = [v53 initFromSemantic:v54];

    v81 = [v82 firstSeatContainingAttributes:3];
    v55 = [v81 airlineSeat];
    if ([v55 length])
    {
      v56 = @"PASS_SERVICE_BADGE_SEAT_INFANT";
    }

    else
    {
      v56 = @"PASS_SERVICE_BADGE_LAP_INFANT";
    }

    PKLocalizedFlightString(&v56->isa);
    v57 = v46;
    v58 = v35;
    v60 = v59 = v13;
    v61 = v39;
    v62 = v17;
    v63 = createPassField(2, @"passengerServiceSSRs.INFT", v60);
    [v3 addObject:v63];

    v17 = v62;
    v39 = v61;

    v13 = v59;
    v35 = v58;
    v46 = v57;
  }

  return v3;
}

@end