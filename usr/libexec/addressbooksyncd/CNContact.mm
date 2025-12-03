@interface CNContact
+ (void)load;
- (id)CNFSSerialize;
- (id)abs_identifier;
- (id)cappedString:(id)string length:(int64_t)length;
@end

@implementation CNContact

- (id)cappedString:(id)string length:(int64_t)length
{
  stringCopy = string;
  if ([stringCopy length] <= length)
  {
    v6 = stringCopy;
  }

  else
  {
    v6 = [stringCopy substringToIndex:length];
  }

  v7 = v6;

  return v7;
}

- (id)CNFSSerialize
{
  v3 = [[NSMutableData alloc] initWithCapacity:2048];
  LOWORD(v219[0]) = 1;
  [v3 appendBytes:v219 length:2];
  LOWORD(v219[0]) = 1;
  [v3 appendBytes:v219 length:2];
  identifier = [(CNContact *)self identifier];
  sub_100016954(1, identifier, v3);

  namePrefix = [(CNContact *)self namePrefix];
  sub_100016954(2, namePrefix, v3);

  givenName = [(CNContact *)self givenName];
  sub_100016954(3, givenName, v3);

  middleName = [(CNContact *)self middleName];
  sub_100016954(4, middleName, v3);

  familyName = [(CNContact *)self familyName];
  sub_100016954(5, familyName, v3);

  previousFamilyName = [(CNContact *)self previousFamilyName];
  sub_100016954(6, previousFamilyName, v3);

  nameSuffix = [(CNContact *)self nameSuffix];
  sub_100016954(7, nameSuffix, v3);

  nickname = [(CNContact *)self nickname];
  sub_100016954(8, nickname, v3);

  organizationName = [(CNContact *)self organizationName];
  sub_100016954(9, organizationName, v3);

  departmentName = [(CNContact *)self departmentName];
  sub_100016954(10, departmentName, v3);

  jobTitle = [(CNContact *)self jobTitle];
  sub_100016954(11, jobTitle, v3);

  note = [(CNContact *)self note];
  v16 = [(CNContact *)self cappedString:note length:0x2000];
  sub_100016954(12, v16, v3);

  birthday = [(CNContact *)self birthday];
  if (birthday)
  {
    LOWORD(v219[0]) = 15;
    v18 = v3;
    v19 = birthday;
    [v18 appendBytes:v219 length:2];
    sub_100016AFC(v19, v18);
  }

  nonGregorianBirthday = [(CNContact *)self nonGregorianBirthday];
  v21 = v3;
  v22 = v21;
  if (nonGregorianBirthday)
  {
    LOWORD(v219[0]) = 26;
    [v21 appendBytes:v219 length:2];
    v219[0] = 12;
    v23 = nonGregorianBirthday;
    v24 = v22;
    [v24 appendBytes:v219 length:4];
    sub_100016AFC(v23, v24);
    [v23 calendar];
    v26 = v25 = self;

    calendarIdentifier = [v26 calendarIdentifier];
    v28 = sub_100016CEC(calendarIdentifier);

    self = v25;
    LOBYTE(v206) = v28;
    [v24 appendBytes:&v206 length:1];
  }

  contactType = [(CNContact *)self contactType];
  LOWORD(v219[0]) = 17;
  v30 = v22;
  [v30 appendBytes:v219 length:2];
  LOBYTE(v219[0]) = contactType;
  [v30 appendBytes:v219 length:1];

  phoneticOrganizationName = [(CNContact *)self phoneticOrganizationName];
  sub_100016954(18, phoneticOrganizationName, v30);

  phoneticFamilyName = [(CNContact *)self phoneticFamilyName];
  sub_100016954(19, phoneticFamilyName, v30);

  phoneticGivenName = [(CNContact *)self phoneticGivenName];
  sub_100016954(20, phoneticGivenName, v30);

  phoneticMiddleName = [(CNContact *)self phoneticMiddleName];
  sub_100016954(21, phoneticMiddleName, v30);

  pronunciationGivenName = [(CNContact *)self pronunciationGivenName];
  sub_100016954(28, pronunciationGivenName, v30);

  pronunciationFamilyName = [(CNContact *)self pronunciationFamilyName];
  sub_100016954(27, pronunciationFamilyName, v30);

  phonemeData = [(CNContact *)self phonemeData];
  sub_100016954(29, phonemeData, v30);

  preferredApplePersonaIdentifier = [(CNContact *)self preferredApplePersonaIdentifier];
  sub_100016954(24, preferredApplePersonaIdentifier, v30);

  preferredLikenessSource = [(CNContact *)self preferredLikenessSource];
  sub_100016954(25, preferredLikenessSource, v30);

  preferredChannel = [(CNContact *)self preferredChannel];
  sub_100016954(30, preferredChannel, v30);

  downtimeWhitelist = [(CNContact *)self downtimeWhitelist];
  sub_100016954(31, downtimeWhitelist, v30);

  callAlert = [(CNContact *)self callAlert];

  if (callAlert)
  {
    LOWORD(v219[0]) = 22;
    [v30 appendBytes:v219 length:2];
    callAlert2 = [(CNContact *)self callAlert];
    sound = [callAlert2 sound];
    sub_1000169D0(sound, v30);

    callAlert3 = [(CNContact *)self callAlert];
    vibration = [callAlert3 vibration];
    sub_1000169D0(vibration, v30);

    callAlert4 = [(CNContact *)self callAlert];
    LOBYTE(v219[0]) = [callAlert4 ignoreMute];
    [v30 appendBytes:v219 length:1];
  }

  textAlert = [(CNContact *)self textAlert];

  if (textAlert)
  {
    LOWORD(v219[0]) = 23;
    [v30 appendBytes:v219 length:2];
    textAlert2 = [(CNContact *)self textAlert];
    sound2 = [textAlert2 sound];
    sub_1000169D0(sound2, v30);

    textAlert3 = [(CNContact *)self textAlert];
    vibration2 = [textAlert3 vibration];
    sub_1000169D0(vibration2, v30);

    textAlert4 = [(CNContact *)self textAlert];
    LOBYTE(v219[0]) = [textAlert4 ignoreMute];
    [v30 appendBytes:v219 length:1];
  }

  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  phoneNumbers = [(CNContact *)self phoneNumbers];
  v55 = [phoneNumbers countByEnumeratingWithState:&v202 objects:v218 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v203;
    do
    {
      for (i = 0; i != v56; i = i + 1)
      {
        if (*v203 != v57)
        {
          objc_enumerationMutation(phoneNumbers);
        }

        v59 = *(*(&v202 + 1) + 8 * i);
        LOWORD(v219[0]) = -32767;
        [v30 appendBytes:v219 length:2];
        label = [v59 label];
        sub_100016A88(label, v30);

        value = [v59 value];
        stringValue = [value stringValue];
        sub_1000169D0(stringValue, v30);
      }

      v56 = [phoneNumbers countByEnumeratingWithState:&v202 objects:v218 count:16];
    }

    while (v56);
  }

  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  emailAddresses = [v168 emailAddresses];
  v64 = [emailAddresses countByEnumeratingWithState:&v198 objects:v217 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v199;
    do
    {
      for (j = 0; j != v65; j = j + 1)
      {
        if (*v199 != v66)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v68 = *(*(&v198 + 1) + 8 * j);
        LOWORD(v219[0]) = -32766;
        [v30 appendBytes:v219 length:2];
        label2 = [v68 label];
        sub_100016A88(label2, v30);

        value2 = [v68 value];
        sub_1000169D0(value2, v30);
      }

      v65 = [emailAddresses countByEnumeratingWithState:&v198 objects:v217 count:16];
    }

    while (v65);
  }

  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  postalAddresses = [v168 postalAddresses];
  v72 = [postalAddresses countByEnumeratingWithState:&v194 objects:v216 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v195;
    do
    {
      for (k = 0; k != v73; k = k + 1)
      {
        if (*v195 != v74)
        {
          objc_enumerationMutation(postalAddresses);
        }

        v76 = *(*(&v194 + 1) + 8 * k);
        LOWORD(v219[0]) = -32765;
        [v30 appendBytes:v219 length:2];
        label3 = [v76 label];
        sub_100016A88(label3, v30);

        value3 = [v76 value];
        v79 = v30;
        if (value3)
        {
          street = [value3 street];

          if (street)
          {
            sub_100016A88(CNPostalAddressStreetKey, v79);
            street2 = [value3 street];
            sub_1000169D0(street2, v79);
          }

          city = [value3 city];

          if (city)
          {
            sub_100016A88(CNPostalAddressCityKey, v79);
            city2 = [value3 city];
            sub_1000169D0(city2, v79);
          }

          state = [value3 state];

          if (state)
          {
            sub_100016A88(CNPostalAddressStateKey, v79);
            state2 = [value3 state];
            sub_1000169D0(state2, v79);
          }

          postalCode = [value3 postalCode];

          if (postalCode)
          {
            sub_100016A88(CNPostalAddressPostalCodeKey, v79);
            postalCode2 = [value3 postalCode];
            sub_1000169D0(postalCode2, v79);
          }

          country = [value3 country];

          if (country)
          {
            sub_100016A88(CNPostalAddressCountryKey, v79);
            country2 = [value3 country];
            sub_1000169D0(country2, v79);
          }

          iSOCountryCode = [value3 ISOCountryCode];

          if (iSOCountryCode)
          {
            sub_100016A88(CNPostalAddressISOCountryCodeKey, v79);
            iSOCountryCode2 = [value3 ISOCountryCode];
            sub_1000169D0(iSOCountryCode2, v79);
          }

          subLocality = [value3 subLocality];

          if (subLocality)
          {
            sub_100016A88(CNPostalAddressSubLocalityKey, v79);
            subLocality2 = [value3 subLocality];
            sub_1000169D0(subLocality2, v79);
          }

          subAdministrativeArea = [value3 subAdministrativeArea];

          if (subAdministrativeArea)
          {
            sub_100016A88(CNPostalAddressSubAdministrativeAreaKey, v79);
            subAdministrativeArea2 = [value3 subAdministrativeArea];
            sub_1000169D0(subAdministrativeArea2, v79);
          }

          LOBYTE(v219[0]) = -2;
          [v79 appendBytes:v219 length:1];
        }
      }

      v73 = [postalAddresses countByEnumeratingWithState:&v194 objects:v216 count:16];
    }

    while (v73);
  }

  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  urlAddresses = [v168 urlAddresses];
  v97 = [urlAddresses countByEnumeratingWithState:&v190 objects:v215 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = *v191;
    do
    {
      for (m = 0; m != v98; m = m + 1)
      {
        if (*v191 != v99)
        {
          objc_enumerationMutation(urlAddresses);
        }

        v101 = *(*(&v190 + 1) + 8 * m);
        LOWORD(v219[0]) = -32764;
        [v30 appendBytes:v219 length:2];
        label4 = [v101 label];
        sub_100016A88(label4, v30);

        value4 = [v101 value];
        sub_1000169D0(value4, v30);
      }

      v98 = [urlAddresses countByEnumeratingWithState:&v190 objects:v215 count:16];
    }

    while (v98);
  }

  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  contactRelations = [v168 contactRelations];
  v105 = [contactRelations countByEnumeratingWithState:&v186 objects:v214 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v187;
    do
    {
      for (n = 0; n != v106; n = n + 1)
      {
        if (*v187 != v107)
        {
          objc_enumerationMutation(contactRelations);
        }

        v109 = *(*(&v186 + 1) + 8 * n);
        LOWORD(v219[0]) = -32763;
        [v30 appendBytes:v219 length:2];
        label5 = [v109 label];
        sub_100016A88(label5, v30);

        identifier2 = [v109 identifier];
        sub_1000169D0(identifier2, v30);

        value5 = [v109 value];
        name = [value5 name];
        sub_1000169D0(name, v30);
      }

      v106 = [contactRelations countByEnumeratingWithState:&v186 objects:v214 count:16];
    }

    while (v106);
  }

  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  obj = [v168 socialProfiles];
  v114 = [obj countByEnumeratingWithState:&v182 objects:v213 count:16];
  if (v114)
  {
    v115 = v114;
    v116 = *v183;
    v171 = CNSocialProfileTeamIdentifierKey;
    v169 = CNSocialProfileDisplayNameKey;
    v170 = CNSocialProfileBundleIdentifiersKey;
    do
    {
      v117 = 0;
      v172 = v115;
      do
      {
        if (*v183 != v116)
        {
          objc_enumerationMutation(obj);
        }

        v118 = *(*(&v182 + 1) + 8 * v117);
        LOWORD(v219[0]) = -32762;
        [v30 appendBytes:v219 length:2];
        label6 = [v118 label];
        sub_100016A88(label6, v30);

        value6 = [v118 value];
        v121 = v30;
        if (value6)
        {
          urlString = [value6 urlString];

          if (urlString)
          {
            sub_100016A88(CNSocialProfileURLStringKey, v121);
            urlString2 = [value6 urlString];
            sub_1000169D0(urlString2, v121);
          }

          username = [value6 username];

          if (username)
          {
            sub_100016A88(CNSocialProfileUsernameKey, v121);
            username2 = [value6 username];
            sub_1000169D0(username2, v121);
          }

          userIdentifier = [value6 userIdentifier];

          if (userIdentifier)
          {
            sub_100016A88(CNSocialProfileUserIdentifierKey, v121);
            userIdentifier2 = [value6 userIdentifier];
            sub_1000169D0(userIdentifier2, v121);
          }

          service = [value6 service];

          if (service)
          {
            sub_100016A88(CNSocialProfileServiceKey, v121);
            service2 = [value6 service];
            sub_100016A88(service2, v121);
          }

          teamIdentifier = [value6 teamIdentifier];

          if (teamIdentifier)
          {
            sub_100016A88(v171, v121);
            teamIdentifier2 = [value6 teamIdentifier];
            sub_1000169D0(teamIdentifier2, v121);
          }

          bundleIdentifiers = [value6 bundleIdentifiers];
          v133 = [bundleIdentifiers count];

          if (v133)
          {
            v134 = v116;
            sub_100016A88(v170, v121);
            v135 = [[NSMutableData alloc] initWithCapacity:4096];
            v206 = 0u;
            v207 = 0u;
            v208 = 0u;
            v209 = 0u;
            bundleIdentifiers2 = [value6 bundleIdentifiers];
            v137 = [bundleIdentifiers2 countByEnumeratingWithState:&v206 objects:v219 count:16];
            if (v137)
            {
              v138 = v137;
              v139 = *v207;
              do
              {
                for (ii = 0; ii != v138; ii = ii + 1)
                {
                  if (*v207 != v139)
                  {
                    objc_enumerationMutation(bundleIdentifiers2);
                  }

                  sub_1000169D0(*(*(&v206 + 1) + 8 * ii), v135);
                }

                v138 = [bundleIdentifiers2 countByEnumeratingWithState:&v206 objects:v219 count:16];
              }

              while (v138);
            }

            v141 = v135;
            if (v141)
            {
              v142 = v121;
              v210 = [v141 length];
              [v142 appendBytes:&v210 length:4];
              [v142 appendData:v141];
            }

            else
            {
              v210 = -1;
              [v121 appendBytes:&v210 length:4];
            }

            v116 = v134;

            v115 = v172;
          }

          displayname = [value6 displayname];

          if (displayname)
          {
            sub_100016A88(v169, v121);
            displayname2 = [value6 displayname];
            sub_1000169D0(displayname2, v121);
          }

          LOBYTE(v210) = -2;
          [v121 appendBytes:&v210 length:1];
        }

        v117 = v117 + 1;
      }

      while (v117 != v115);
      v115 = [obj countByEnumeratingWithState:&v182 objects:v213 count:16];
    }

    while (v115);
  }

  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  instantMessageAddresses = [v168 instantMessageAddresses];
  v146 = [instantMessageAddresses countByEnumeratingWithState:&v178 objects:v212 count:16];
  if (v146)
  {
    v147 = v146;
    v148 = *v179;
    do
    {
      for (jj = 0; jj != v147; jj = jj + 1)
      {
        if (*v179 != v148)
        {
          objc_enumerationMutation(instantMessageAddresses);
        }

        v150 = *(*(&v178 + 1) + 8 * jj);
        LOWORD(v219[0]) = -32761;
        [v30 appendBytes:v219 length:2];
        label7 = [v150 label];
        sub_100016A88(label7, v30);

        value7 = [v150 value];
        v153 = v30;
        if (value7)
        {
          username3 = [value7 username];

          if (username3)
          {
            sub_100016A88(CNInstantMessageAddressUsernameKey, v153);
            username4 = [value7 username];
            sub_1000169D0(username4, v153);
          }

          service3 = [value7 service];

          if (service3)
          {
            sub_100016A88(CNInstantMessageAddressServiceKey, v153);
            service4 = [value7 service];
            sub_100016A88(service4, v153);
          }

          LOBYTE(v219[0]) = -2;
          [v153 appendBytes:v219 length:1];
        }
      }

      v147 = [instantMessageAddresses countByEnumeratingWithState:&v178 objects:v212 count:16];
    }

    while (v147);
  }

  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  dates = [v168 dates];
  v159 = [dates countByEnumeratingWithState:&v174 objects:v211 count:16];
  if (v159)
  {
    v160 = v159;
    v161 = *v175;
    do
    {
      for (kk = 0; kk != v160; kk = kk + 1)
      {
        if (*v175 != v161)
        {
          objc_enumerationMutation(dates);
        }

        v163 = *(*(&v174 + 1) + 8 * kk);
        LOWORD(v219[0]) = -32760;
        [v30 appendBytes:v219 length:2];
        label8 = [v163 label];
        sub_100016A88(label8, v30);

        value8 = [v163 value];
        sub_100016AFC(value8, v30);
      }

      v160 = [dates countByEnumeratingWithState:&v174 objects:v211 count:16];
    }

    while (v160);
  }

  v166 = v30;
  return v30;
}

+ (void)load
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030274;
  block[3] = &unk_10005D940;
  block[4] = self;
  if (qword_100071CA8 != -1)
  {
    dispatch_once(&qword_100071CA8, block);
  }
}

- (id)abs_identifier
{
  abs_identifier = [(CNContact *)self abs_identifier];
  if (!abs_identifier)
  {
    sub_10003B950(a2, self);
  }

  return abs_identifier;
}

@end