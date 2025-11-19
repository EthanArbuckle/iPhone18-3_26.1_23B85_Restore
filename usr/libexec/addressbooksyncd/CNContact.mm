@interface CNContact
+ (void)load;
- (id)CNFSSerialize;
- (id)abs_identifier;
- (id)cappedString:(id)a3 length:(int64_t)a4;
@end

@implementation CNContact

- (id)cappedString:(id)a3 length:(int64_t)a4
{
  v5 = a3;
  if ([v5 length] <= a4)
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 substringToIndex:a4];
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
  v4 = [(CNContact *)self identifier];
  sub_100016954(1, v4, v3);

  v5 = [(CNContact *)self namePrefix];
  sub_100016954(2, v5, v3);

  v6 = [(CNContact *)self givenName];
  sub_100016954(3, v6, v3);

  v7 = [(CNContact *)self middleName];
  sub_100016954(4, v7, v3);

  v8 = [(CNContact *)self familyName];
  sub_100016954(5, v8, v3);

  v9 = [(CNContact *)self previousFamilyName];
  sub_100016954(6, v9, v3);

  v10 = [(CNContact *)self nameSuffix];
  sub_100016954(7, v10, v3);

  v11 = [(CNContact *)self nickname];
  sub_100016954(8, v11, v3);

  v12 = [(CNContact *)self organizationName];
  sub_100016954(9, v12, v3);

  v13 = [(CNContact *)self departmentName];
  sub_100016954(10, v13, v3);

  v14 = [(CNContact *)self jobTitle];
  sub_100016954(11, v14, v3);

  v15 = [(CNContact *)self note];
  v16 = [(CNContact *)self cappedString:v15 length:0x2000];
  sub_100016954(12, v16, v3);

  v17 = [(CNContact *)self birthday];
  if (v17)
  {
    LOWORD(v219[0]) = 15;
    v18 = v3;
    v19 = v17;
    [v18 appendBytes:v219 length:2];
    sub_100016AFC(v19, v18);
  }

  v20 = [(CNContact *)self nonGregorianBirthday];
  v21 = v3;
  v22 = v21;
  if (v20)
  {
    LOWORD(v219[0]) = 26;
    [v21 appendBytes:v219 length:2];
    v219[0] = 12;
    v23 = v20;
    v24 = v22;
    [v24 appendBytes:v219 length:4];
    sub_100016AFC(v23, v24);
    [v23 calendar];
    v26 = v25 = self;

    v27 = [v26 calendarIdentifier];
    v28 = sub_100016CEC(v27);

    self = v25;
    LOBYTE(v206) = v28;
    [v24 appendBytes:&v206 length:1];
  }

  v29 = [(CNContact *)self contactType];
  LOWORD(v219[0]) = 17;
  v30 = v22;
  [v30 appendBytes:v219 length:2];
  LOBYTE(v219[0]) = v29;
  [v30 appendBytes:v219 length:1];

  v31 = [(CNContact *)self phoneticOrganizationName];
  sub_100016954(18, v31, v30);

  v32 = [(CNContact *)self phoneticFamilyName];
  sub_100016954(19, v32, v30);

  v33 = [(CNContact *)self phoneticGivenName];
  sub_100016954(20, v33, v30);

  v34 = [(CNContact *)self phoneticMiddleName];
  sub_100016954(21, v34, v30);

  v35 = [(CNContact *)self pronunciationGivenName];
  sub_100016954(28, v35, v30);

  v36 = [(CNContact *)self pronunciationFamilyName];
  sub_100016954(27, v36, v30);

  v37 = [(CNContact *)self phonemeData];
  sub_100016954(29, v37, v30);

  v38 = [(CNContact *)self preferredApplePersonaIdentifier];
  sub_100016954(24, v38, v30);

  v39 = [(CNContact *)self preferredLikenessSource];
  sub_100016954(25, v39, v30);

  v40 = [(CNContact *)self preferredChannel];
  sub_100016954(30, v40, v30);

  v41 = [(CNContact *)self downtimeWhitelist];
  sub_100016954(31, v41, v30);

  v42 = [(CNContact *)self callAlert];

  if (v42)
  {
    LOWORD(v219[0]) = 22;
    [v30 appendBytes:v219 length:2];
    v43 = [(CNContact *)self callAlert];
    v44 = [v43 sound];
    sub_1000169D0(v44, v30);

    v45 = [(CNContact *)self callAlert];
    v46 = [v45 vibration];
    sub_1000169D0(v46, v30);

    v47 = [(CNContact *)self callAlert];
    LOBYTE(v219[0]) = [v47 ignoreMute];
    [v30 appendBytes:v219 length:1];
  }

  v48 = [(CNContact *)self textAlert];

  if (v48)
  {
    LOWORD(v219[0]) = 23;
    [v30 appendBytes:v219 length:2];
    v49 = [(CNContact *)self textAlert];
    v50 = [v49 sound];
    sub_1000169D0(v50, v30);

    v51 = [(CNContact *)self textAlert];
    v52 = [v51 vibration];
    sub_1000169D0(v52, v30);

    v53 = [(CNContact *)self textAlert];
    LOBYTE(v219[0]) = [v53 ignoreMute];
    [v30 appendBytes:v219 length:1];
  }

  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  v54 = [(CNContact *)self phoneNumbers];
  v55 = [v54 countByEnumeratingWithState:&v202 objects:v218 count:16];
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
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v202 + 1) + 8 * i);
        LOWORD(v219[0]) = -32767;
        [v30 appendBytes:v219 length:2];
        v60 = [v59 label];
        sub_100016A88(v60, v30);

        v61 = [v59 value];
        v62 = [v61 stringValue];
        sub_1000169D0(v62, v30);
      }

      v56 = [v54 countByEnumeratingWithState:&v202 objects:v218 count:16];
    }

    while (v56);
  }

  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v63 = [v168 emailAddresses];
  v64 = [v63 countByEnumeratingWithState:&v198 objects:v217 count:16];
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
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v198 + 1) + 8 * j);
        LOWORD(v219[0]) = -32766;
        [v30 appendBytes:v219 length:2];
        v69 = [v68 label];
        sub_100016A88(v69, v30);

        v70 = [v68 value];
        sub_1000169D0(v70, v30);
      }

      v65 = [v63 countByEnumeratingWithState:&v198 objects:v217 count:16];
    }

    while (v65);
  }

  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v71 = [v168 postalAddresses];
  v72 = [v71 countByEnumeratingWithState:&v194 objects:v216 count:16];
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
          objc_enumerationMutation(v71);
        }

        v76 = *(*(&v194 + 1) + 8 * k);
        LOWORD(v219[0]) = -32765;
        [v30 appendBytes:v219 length:2];
        v77 = [v76 label];
        sub_100016A88(v77, v30);

        v78 = [v76 value];
        v79 = v30;
        if (v78)
        {
          v80 = [v78 street];

          if (v80)
          {
            sub_100016A88(CNPostalAddressStreetKey, v79);
            v81 = [v78 street];
            sub_1000169D0(v81, v79);
          }

          v82 = [v78 city];

          if (v82)
          {
            sub_100016A88(CNPostalAddressCityKey, v79);
            v83 = [v78 city];
            sub_1000169D0(v83, v79);
          }

          v84 = [v78 state];

          if (v84)
          {
            sub_100016A88(CNPostalAddressStateKey, v79);
            v85 = [v78 state];
            sub_1000169D0(v85, v79);
          }

          v86 = [v78 postalCode];

          if (v86)
          {
            sub_100016A88(CNPostalAddressPostalCodeKey, v79);
            v87 = [v78 postalCode];
            sub_1000169D0(v87, v79);
          }

          v88 = [v78 country];

          if (v88)
          {
            sub_100016A88(CNPostalAddressCountryKey, v79);
            v89 = [v78 country];
            sub_1000169D0(v89, v79);
          }

          v90 = [v78 ISOCountryCode];

          if (v90)
          {
            sub_100016A88(CNPostalAddressISOCountryCodeKey, v79);
            v91 = [v78 ISOCountryCode];
            sub_1000169D0(v91, v79);
          }

          v92 = [v78 subLocality];

          if (v92)
          {
            sub_100016A88(CNPostalAddressSubLocalityKey, v79);
            v93 = [v78 subLocality];
            sub_1000169D0(v93, v79);
          }

          v94 = [v78 subAdministrativeArea];

          if (v94)
          {
            sub_100016A88(CNPostalAddressSubAdministrativeAreaKey, v79);
            v95 = [v78 subAdministrativeArea];
            sub_1000169D0(v95, v79);
          }

          LOBYTE(v219[0]) = -2;
          [v79 appendBytes:v219 length:1];
        }
      }

      v73 = [v71 countByEnumeratingWithState:&v194 objects:v216 count:16];
    }

    while (v73);
  }

  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v96 = [v168 urlAddresses];
  v97 = [v96 countByEnumeratingWithState:&v190 objects:v215 count:16];
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
          objc_enumerationMutation(v96);
        }

        v101 = *(*(&v190 + 1) + 8 * m);
        LOWORD(v219[0]) = -32764;
        [v30 appendBytes:v219 length:2];
        v102 = [v101 label];
        sub_100016A88(v102, v30);

        v103 = [v101 value];
        sub_1000169D0(v103, v30);
      }

      v98 = [v96 countByEnumeratingWithState:&v190 objects:v215 count:16];
    }

    while (v98);
  }

  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v104 = [v168 contactRelations];
  v105 = [v104 countByEnumeratingWithState:&v186 objects:v214 count:16];
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
          objc_enumerationMutation(v104);
        }

        v109 = *(*(&v186 + 1) + 8 * n);
        LOWORD(v219[0]) = -32763;
        [v30 appendBytes:v219 length:2];
        v110 = [v109 label];
        sub_100016A88(v110, v30);

        v111 = [v109 identifier];
        sub_1000169D0(v111, v30);

        v112 = [v109 value];
        v113 = [v112 name];
        sub_1000169D0(v113, v30);
      }

      v106 = [v104 countByEnumeratingWithState:&v186 objects:v214 count:16];
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
        v119 = [v118 label];
        sub_100016A88(v119, v30);

        v120 = [v118 value];
        v121 = v30;
        if (v120)
        {
          v122 = [v120 urlString];

          if (v122)
          {
            sub_100016A88(CNSocialProfileURLStringKey, v121);
            v123 = [v120 urlString];
            sub_1000169D0(v123, v121);
          }

          v124 = [v120 username];

          if (v124)
          {
            sub_100016A88(CNSocialProfileUsernameKey, v121);
            v125 = [v120 username];
            sub_1000169D0(v125, v121);
          }

          v126 = [v120 userIdentifier];

          if (v126)
          {
            sub_100016A88(CNSocialProfileUserIdentifierKey, v121);
            v127 = [v120 userIdentifier];
            sub_1000169D0(v127, v121);
          }

          v128 = [v120 service];

          if (v128)
          {
            sub_100016A88(CNSocialProfileServiceKey, v121);
            v129 = [v120 service];
            sub_100016A88(v129, v121);
          }

          v130 = [v120 teamIdentifier];

          if (v130)
          {
            sub_100016A88(v171, v121);
            v131 = [v120 teamIdentifier];
            sub_1000169D0(v131, v121);
          }

          v132 = [v120 bundleIdentifiers];
          v133 = [v132 count];

          if (v133)
          {
            v134 = v116;
            sub_100016A88(v170, v121);
            v135 = [[NSMutableData alloc] initWithCapacity:4096];
            v206 = 0u;
            v207 = 0u;
            v208 = 0u;
            v209 = 0u;
            v136 = [v120 bundleIdentifiers];
            v137 = [v136 countByEnumeratingWithState:&v206 objects:v219 count:16];
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
                    objc_enumerationMutation(v136);
                  }

                  sub_1000169D0(*(*(&v206 + 1) + 8 * ii), v135);
                }

                v138 = [v136 countByEnumeratingWithState:&v206 objects:v219 count:16];
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

          v143 = [v120 displayname];

          if (v143)
          {
            sub_100016A88(v169, v121);
            v144 = [v120 displayname];
            sub_1000169D0(v144, v121);
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
  v145 = [v168 instantMessageAddresses];
  v146 = [v145 countByEnumeratingWithState:&v178 objects:v212 count:16];
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
          objc_enumerationMutation(v145);
        }

        v150 = *(*(&v178 + 1) + 8 * jj);
        LOWORD(v219[0]) = -32761;
        [v30 appendBytes:v219 length:2];
        v151 = [v150 label];
        sub_100016A88(v151, v30);

        v152 = [v150 value];
        v153 = v30;
        if (v152)
        {
          v154 = [v152 username];

          if (v154)
          {
            sub_100016A88(CNInstantMessageAddressUsernameKey, v153);
            v155 = [v152 username];
            sub_1000169D0(v155, v153);
          }

          v156 = [v152 service];

          if (v156)
          {
            sub_100016A88(CNInstantMessageAddressServiceKey, v153);
            v157 = [v152 service];
            sub_100016A88(v157, v153);
          }

          LOBYTE(v219[0]) = -2;
          [v153 appendBytes:v219 length:1];
        }
      }

      v147 = [v145 countByEnumeratingWithState:&v178 objects:v212 count:16];
    }

    while (v147);
  }

  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v158 = [v168 dates];
  v159 = [v158 countByEnumeratingWithState:&v174 objects:v211 count:16];
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
          objc_enumerationMutation(v158);
        }

        v163 = *(*(&v174 + 1) + 8 * kk);
        LOWORD(v219[0]) = -32760;
        [v30 appendBytes:v219 length:2];
        v164 = [v163 label];
        sub_100016A88(v164, v30);

        v165 = [v163 value];
        sub_100016AFC(v165, v30);
      }

      v160 = [v158 countByEnumeratingWithState:&v174 objects:v211 count:16];
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
  block[4] = a1;
  if (qword_100071CA8 != -1)
  {
    dispatch_once(&qword_100071CA8, block);
  }
}

- (id)abs_identifier
{
  v4 = [(CNContact *)self abs_identifier];
  if (!v4)
  {
    sub_10003B950(a2, self);
  }

  return v4;
}

@end