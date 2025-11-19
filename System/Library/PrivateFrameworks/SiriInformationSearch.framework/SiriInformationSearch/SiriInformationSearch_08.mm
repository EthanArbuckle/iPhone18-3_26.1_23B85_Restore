uint64_t ICMusicUserState.ampSubscriptionStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 subscriptionStatus];
  if ((v3 || (v3 = [v1 lightweightSubscriptionStatus]) != 0) && (v4 = v3, v5 = ~objc_msgSend(v3, sel_capabilities), v4, (v5 & 0x101) == 0))
  {
    v6 = MEMORY[0x277D39A18];
  }

  else
  {
    v6 = MEMORY[0x277D39A20];
  }

  v7 = *v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus();
  v9 = *(*(v8 - 8) + 104);

  return v9(a1, v7, v8);
}

void ICMusicUserState.eligibleOffers.getter()
{
  v1 = [v0 subscriptionStatus];
  if (v1 && (v2 = v1, v3 = [v1 eligibleOffers], v2, v3) || (v4 = objc_msgSend(v0, sel_lightweightSubscriptionStatus)) != 0 && (v5 = v4, v3 = objc_msgSend(v4, sel_eligibleOffers), v5, v3))
  {
    type metadata accessor for ICSubscriptionStatusOfferType(0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = MEMORY[0x277D84F90];
      while (v8 < *(v6 + 16))
      {
        v10 = *(v6 + 32 + 8 * v8);
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        v15 = *(v9 + 2);
        v14 = *(v9 + 3);
        if (v15 >= v14 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v9);
        }

        ++v8;
        *(v9 + 2) = v15 + 1;
        v16 = &v9[16 * v15];
        *(v16 + 4) = v11;
        *(v16 + 5) = v13;
        if (v7 == v8)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_15:
    }
  }
}

id ICMusicUserState.isSubscribedToGlide.getter()
{
  result = [v0 subscriptionStatus];
  if (result || (result = [v0 lightweightSubscriptionStatus]) != 0)
  {
    v2 = result;
    v3 = [result statusType];

    return (v3 == 3);
  }

  return result;
}

uint64_t ICMusicUserState.itunesSubscriptionStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 subscriptionStatus];
  if (v3 && (v4 = v3, v5 = [v3 isMatchEnabled], v4, (v5 & 1) != 0))
  {
    v6 = MEMORY[0x277D39D08];
  }

  else
  {
    v6 = MEMORY[0x277D39D10];
  }

  v7 = *v6;
  matched = type metadata accessor for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus();
  v9 = *(*(matched - 8) + 104);

  return v9(a1, v7, matched);
}

uint64_t ICMusicUserState.xpabCookie.getter(const char **a1)
{
  v3 = [v1 cookies];
  if (!v3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = v3;
  v6 = [v3 v4];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

uint64_t ICMusicUserState.isGlideEligible.getter()
{
  ICMusicUserState.eligibleOffers.getter();
  v4[0] = 0x57454956455250;
  v4[1] = 0xE700000000000000;
  v3[2] = v4;
  v1 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v3, v0);

  return v1 & 1;
}

id protocol witness for MusicUserState.userToken.getter in conformance ICMusicUserState()
{
  result = [*v0 libraryAuthTokenStatus];
  if (result)
  {
    v2 = result;
    v3 = [result token];

    if (v3)
    {
      v4 = [v3 token];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id protocol witness for MusicUserState.lastError.getter in conformance ICMusicUserState()
{
  v1 = [*v0 libraryAuthTokenStatus];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 lastError];

  return v3;
}

id protocol witness for MusicUserState.isSubscribedToGlide.getter in conformance ICMusicUserState()
{
  v1 = *v0;
  result = [*v0 subscriptionStatus];
  if (result || (result = [v1 lightweightSubscriptionStatus]) != 0)
  {
    v3 = result;
    v4 = [result statusType];

    return (v4 == 3);
  }

  return result;
}

uint64_t protocol witness for MusicUserState.itunesSubscriptionStatus.getter in conformance ICMusicUserState@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 subscriptionStatus];
  v4 = MEMORY[0x277D39D10];
  if (v3)
  {
    v5 = v3;
    v6 = [v3 isMatchEnabled];

    if (v6)
    {
      v4 = MEMORY[0x277D39D08];
    }
  }

  v7 = *v4;
  matched = type metadata accessor for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus();
  v9 = *(*(matched - 8) + 104);

  return v9(a1, v7, matched);
}

uint64_t protocol witness for MusicUserState.xpabCookie.getter in conformance ICMusicUserState(uint64_t a1, uint64_t a2, const char **a3)
{
  v5 = [*v3 cookies];
  if (!v5)
  {
    return 0;
  }

  v6 = *a3;
  v7 = v5;
  v8 = [v5 v6];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

uint64_t protocol witness for MusicUserState.isGlideEligible.getter in conformance ICMusicUserState()
{
  v1 = *v0;
  ICMusicUserState.eligibleOffers.getter();
  v5[0] = 0x57454956455250;
  v5[1] = 0xE700000000000000;
  v4[2] = v5;
  LOBYTE(v1) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v4, v2);

  return v1 & 1;
}

id ICMediaUserState.musicUserState.getter@<X0>(void *a1@<X8>)
{
  result = [v1 music];
  v4 = result;
  if (result)
  {
    result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMusicUserState, 0x277D7FB90);
    v5 = &protocol witness table for ICMusicUserState;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id protocol witness for MediaUserState.musicUserState.getter in conformance ICMediaUserState@<X0>(void *a1@<X8>)
{
  result = [*v1 music];
  v4 = result;
  if (result)
  {
    result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMusicUserState, 0x277D7FB90);
    v5 = &protocol witness table for ICMusicUserState;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t protocol witness for MediaUserState.storefrontIdentifier.getter in conformance ICMediaUserState()
{
  v1 = [*v0 storefrontIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t protocol witness for MediaUserState.homeUserIDs.getter in conformance ICMediaUserState()
{
  v1 = [*v0 homeUserIDs];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t protocol witness for MediaUserState.alternateDSID.getter in conformance ICMediaUserState()
{
  v1 = [*v0 alternateDSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t createAMPUserState(mediaUserState:muxUserInfo:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a3;
  v115 = a2;
  v117 = a1;
  matched = type metadata accessor for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus();
  v4 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched - 8, v5);
  v112 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v109 - v19;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v116 = __swift_project_value_buffer(v21, static Logger.pommes);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_2232BB000, v22, v23, "Building server AMP user state from the media user state", v24, 2u);
    MEMORY[0x223DE0F80](v24, -1, -1);
  }

  v113 = *(v11 + 56);
  v113(v20, 1, 1, v10);
  v25 = v117[3];
  v26 = v117[4];
  __swift_project_boxed_opaque_existential_1(v117, v25);
  (*(v26 + 8))(&v124, v25, v26);
  if (*(&v125 + 1))
  {
    outlined init with take of DomainWarmupHandling(&v124, v132);
    Apple_Parsec_Siri_V2alpha_AmpUserState.init()();
    v27 = v133;
    v28 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    (*(v28 + 40))(v27, v28);
    Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.setter();
    v29 = v133;
    v30 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    v31 = (*(v30 + 24))(v29, v30);
    v110 = v20;
    v111 = v11 + 56;
    if (v31)
    {
    }

    else
    {
      v54 = v133;
      v55 = v134;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      (*(v55 + 16))(v54, v55);
      if (v56)
      {
        Apple_Parsec_Siri_V2alpha_AmpUserState.userToken.setter();
        v35 = v117;
        goto LABEL_21;
      }
    }

    v32 = v133;
    v33 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    v34 = (*(v33 + 24))(v32, v33);
    v35 = v117;
    if (v34)
    {
      v109 = v34;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v124 = v39;
        *v38 = 136315138;
        swift_getErrorValue();
        v40 = Error.localizedDescription.getter();
        v42 = v15;
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v124);

        *(v38 + 4) = v43;
        v15 = v42;
        v35 = v117;
        _os_log_impl(&dword_2232BB000, v36, v37, "Last error from music token refresh: %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x223DE0F80](v39, -1, -1);
        v44 = v38;
        v20 = v110;
        MEMORY[0x223DE0F80](v44, -1, -1);
      }

      v45 = v133;
      v46 = v134;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v47 = (*(v46 + 24))(v45, v46);
      if (!v47)
      {

        goto LABEL_21;
      }

      v48 = v47;
      v49 = _convertErrorToNSError(_:)();

      result = [v49 code];
      if (result < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (result <= 0x7FFFFFFF)
      {
        Apple_Parsec_Siri_V2alpha_AmpUserState.tokenErrorCode.setter();

        goto LABEL_21;
      }

      __break(1u);
      return result;
    }

LABEL_21:
    outlined init with copy of AppDataProviding(v35, v129);
    v57 = v115;

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *&v124 = v109;
      *v60 = 136315394;
      v61 = v11;
      v62 = v15;
      v63 = v130;
      v64 = v131;
      __swift_project_boxed_opaque_existential_1(v129, v130);
      v65 = *(v64 + 48);
      v66 = v64;
      v15 = v62;
      v11 = v61;
      v67 = v65(v63, v66);
      if (v68)
      {
        v69 = v67;
      }

      else
      {
        v69 = 0x696176615F746F6ELL;
      }

      if (v68)
      {
        v70 = v68;
      }

      else
      {
        v70 = 0xED0000656C62616CLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v129);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, &v124);

      *(v60 + 4) = v71;
      *(v60 + 12) = 2080;
      v72 = MEMORY[0x223DDF870](v115, &type metadata for MUXUserInfo);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v124);

      *(v60 + 14) = v74;
      v57 = v115;
      _os_log_impl(&dword_2232BB000, v58, v59, "Built server AMP user state mediaUserState.alternateDSID : %s muxUserInfo: %s", v60, 0x16u);
      v75 = v109;
      swift_arrayDestroy();
      v20 = v110;
      MEMORY[0x223DE0F80](v75, -1, -1);
      MEMORY[0x223DE0F80](v60, -1, -1);
    }

    else
    {

      v76 = __swift_destroy_boxed_opaque_existential_1(v129);
    }

    MEMORY[0x28223BE20](v76, v77);
    v78 = v117;
    *(&v109 - 2) = v117;
    specialized Sequence.first(where:)(partial apply for closure #1 in createAMPUserState(mediaUserState:muxUserInfo:), v57, &v119);
    v124 = v119;
    v125 = v120;
    v126 = v121;
    v127 = v122;
    v128 = v123;
    if (*(&v119 + 1))
    {

      outlined destroy of MediaUserStateCenter?(&v124, &_s21SiriInformationSearch11MUXUserInfoVSgMd, &_s21SiriInformationSearch11MUXUserInfoVSgMR);
      Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.setter();
    }

    else
    {
      outlined init with copy of AppDataProviding(v78, &v119);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v118 = v117;
        *v81 = 136315138;
        v82 = v15;
        v83 = v11;
        v84 = *(&v120 + 1);
        v85 = v121;
        __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
        v86 = *(v85 + 48);
        v87 = v85;
        v11 = v83;
        v15 = v82;
        v88 = v86(v84, v87);
        if (v89)
        {
          v90 = v88;
        }

        else
        {
          v90 = 0x696176615F746F6ELL;
        }

        if (v89)
        {
          v91 = v89;
        }

        else
        {
          v91 = 0xED0000656C62616CLL;
        }

        __swift_destroy_boxed_opaque_existential_1(&v119);
        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v118);

        *(v81 + 4) = v92;
        _os_log_impl(&dword_2232BB000, v79, v80, "Unable to get the sharedUserId from muxUserInfo whose iTunesAltDSID matches mediaUserState.alternateDSID %s", v81, 0xCu);
        v93 = v117;
        __swift_destroy_boxed_opaque_existential_1(v117);
        v20 = v110;
        MEMORY[0x223DE0F80](v93, -1, -1);
        MEMORY[0x223DE0F80](v81, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v119);
      }
    }

    v94 = v133;
    v95 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    (*(v95 + 64))(v94, v95);
    Apple_Parsec_Siri_V2alpha_AmpUserState.itunesSubscriptionStatus.setter();
    v96 = v133;
    v97 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    (*(v97 + 8))(v96, v97);
    Apple_Parsec_Siri_V2alpha_AmpUserState.isUserHistoryModifiable.setter();
    v98 = v133;
    v99 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    (*(v99 + 72))(v98, v99);
    if (v100)
    {
      Apple_Parsec_Siri_V2alpha_AmpUserState.xpAbCookie.setter();
    }

    v101 = v133;
    v102 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    (*(v102 + 80))(v101, v102);
    if (v103)
    {
      Apple_Parsec_Siri_V2alpha_AmpUserState.itfeCookie.setter();
    }

    Apple_Parsec_Siri_V2alpha_AmpUserState.isDefaultUser.setter();
    v104 = v133;
    v105 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    (*(v105 + 48))(v104, v105);
    Apple_Parsec_Siri_V2alpha_AmpUserState.eligibleOffers.setter();
    v106 = v133;
    v107 = v134;
    __swift_project_boxed_opaque_existential_1(v132, v133);
    (*(v107 + 56))(v106, v107);
    Apple_Parsec_Siri_V2alpha_AmpUserState.isSubscribedToGlide.setter();
    outlined destroy of MediaUserStateCenter?(v20, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
    v108 = v114;
    (*(v11 + 32))(v114, v15, v10);
    v113(v108, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_1(v132);
  }

  outlined destroy of MediaUserStateCenter?(&v124, &_s21SiriInformationSearch14MusicUserState_pSgMd, &_s21SiriInformationSearch14MusicUserState_pSgMR);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_2232BB000, v51, v52, "The active music user state is nil", v53, 2u);
    MEMORY[0x223DE0F80](v53, -1, -1);
  }

  return outlined init with take of PommesSearchReason?(v20, v114, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
}

uint64_t closure #1 in createAMPUserState(mediaUserState:muxUserInfo:)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 48))(v4, v5);
  if (v7)
  {
    if (v6 == v2 && v7 == v3)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t closure #1 in createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(char *, uint64_t)@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v95) = a4;
  v94 = a3;
  v100 = a1;
  v85 = type metadata accessor for JSONEncodingOptions();
  v83 = *(v85 - 8);
  v7 = *(v83 + 64);
  MEMORY[0x28223BE20](v85, v8);
  v84 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  v99 = *(v96 - 8);
  v10 = *(v99 + 64);
  v12 = MEMORY[0x28223BE20](v96, v11);
  v88 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v87 = &v83 - v15;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v92 = *(v16 - 8);
  v93 = v16;
  v17 = *(v92 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v91 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Google_Protobuf_Any();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v90 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v25 = *(v89 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v89, v27);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v97 = *(v30 - 8);
  v98 = v30;
  v31 = *(v97 + 64);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v35 - 8, v37);
  v40 = &v83 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v41);
  v43 = &v83 - v42;
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v44 = Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.getter();
  v86 = a5;
  v46 = v45;

  v47 = HIBYTE(v46) & 0xF;
  v48 = (v46 & 0x2000000000000000) == 0;
  a5 = v86;
  if (v48)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {
    v58 = v100;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.pommes);
    v60 = v99;
    v61 = *(v99 + 16);
    v62 = v87;
    v63 = v96;
    v61(v87, v58, v96);
    v64 = v88;
    v61(v88, v58, v63);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v65, v66))
    {
      LODWORD(v100) = v66;
      v67 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v101[0] = v95;
      *v67 = 67109634;
      *(v67 + 4) = 1;
      *(v67 + 8) = 2080;
      v68 = Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.getter();
      v70 = v69;
      v71 = *(v60 + 8);
      v99 = v60 + 8;
      v94 = v71;
      v71(v62, v63);
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v101);

      *(v67 + 10) = v72;
      *(v67 + 18) = 2080;
      v73 = v84;
      JSONEncodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState, MEMORY[0x277D39450]);
      v74 = v102;
      v75 = Message.jsonString(options:)();
      v77 = (v83 + 8);
      if (v74)
      {

        (*v77)(v73, v85);
        v102 = 0;
        v78 = 0x80000002234DC4E0;
        v79 = 0xD000000000000017;
      }

      else
      {
        v79 = v75;
        v78 = v76;
        v102 = 0;
        (*v77)(v73, v85);
      }

      v94(v64, v63);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v78, v101);

      *(v67 + 20) = v81;
      _os_log_impl(&dword_2232BB000, v65, v100, "ampUserState ignored , sharedUserID is empty in a multiUser request.\n    Request is multi-user: %{BOOL}d\n    Shared user ID: %s \n ampUserState %s\n", v67, 0x1Cu);
      v82 = v95;
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v82, -1, -1);
      MEMORY[0x223DE0F80](v67, -1, -1);

      v56 = 1;
      a5 = v86;
    }

    else
    {

      v80 = *(v60 + 8);
      v80(v64, v63);
      v80(v62, v63);
      v56 = 1;
    }

    v55 = v97;
    v54 = v98;
  }

  else
  {
LABEL_5:
    v49 = v96;
    v101[3] = v96;
    v101[4] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState, MEMORY[0x277D39450]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
    (*(v99 + 16))(boxed_opaque_existential_1, v100, v49);
    defaultAnyTypeURLPrefix.getter();
    v51 = v102;
    Google_Protobuf_Any.init(message:partial:typePrefix:)();
    if (v51)
    {

      v102 = 0;
      v52 = 1;
    }

    else
    {
      v102 = 0;
      v52 = 0;
    }

    (*(v21 + 56))(v43, v52, 1, v20);
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.init()();
    (*(v25 + 104))(v29, *MEMORY[0x277D39AE0], v89);
    Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
    outlined init with copy of Google_Protobuf_Any?(v43, v40);
    v53 = *(v21 + 48);
    if (v53(v40, 1, v20) == 1)
    {
      Google_Protobuf_Any.init()();
      if (v53(v40, 1, v20) != 1)
      {
        outlined destroy of MediaUserStateCenter?(v40, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
      }
    }

    else
    {
      (*(v21 + 32))(v90, v40, v20);
    }

    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
    (*(v92 + 16))(v91, v94, v93);
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
    outlined destroy of MediaUserStateCenter?(v43, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    v55 = v97;
    v54 = v98;
    (*(v97 + 32))(a5, v34, v98);
    v56 = 0;
  }

  return (*(v55 + 56))(a5, v56, 1, v54);
}

id ICMediaUserStateCenter.activeState.getter@<X0>(void *a1@<X8>)
{
  result = [v1 activeUserState];
  v4 = result;
  if (result)
  {
    result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserState, 0x277D7FB18);
    v5 = &protocol witness table for ICMediaUserState;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

void *ICMediaUserStateCenter.allStates.getter()
{
  v1 = [v0 allUserStates];
  v2 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserState, 0x277D7FB18);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v23 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v23;
    v19 = v3 & 0xC000000000000001;
    do
    {
      if (v19)
      {
        v8 = MEMORY[0x223DDFF80](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v21 = v2;
      v22 = &protocol witness table for ICMediaUserState;
      v20[0] = v8;
      v23 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      v11 = &protocol witness table for ICMediaUserState;
      v12 = v2;
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v12 = v21;
        v11 = v22;
      }

      ++v6;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v12);
      v14 = *(*(v12 - 8) + 64);
      MEMORY[0x28223BE20](v13, v13);
      v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v10, v16, &v23, v12, v11);
      __swift_destroy_boxed_opaque_existential_1(v20);
      v7 = v23;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

void ICMediaUserStateCenter.refreshStates(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = partial apply for closure #1 in ICMediaUserStateCenter.refreshStates(completion:);
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [ICMediaUserState], @guaranteed Error?) -> ();
  v7[3] = &block_descriptor_8;
  v6 = _Block_copy(v7);

  [v2 refreshUserStatesWithCompletion_];
  _Block_release(v6);
}

void *closure #1 in ICMediaUserStateCenter.refreshStates(completion:)(unint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_15:
    a3(v6);
  }

  v20 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = MEMORY[0x223DDFF80](v8, a1);
        v20 = v6;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v6 = v20;
        }

        ++v8;
        v18 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserState, 0x277D7FB18);
        v19 = &protocol witness table for ICMediaUserState;
        *&v17 = v9;
        *(v6 + 16) = v11 + 1;
        outlined init with take of DomainWarmupHandling(&v17, v6 + 40 * v11 + 32);
      }

      while (v5 != v8);
    }

    else
    {
      v12 = (a1 + 32);
      do
      {
        v13 = *v12;
        v20 = v6;
        v15 = *(v6 + 16);
        v14 = *(v6 + 24);
        v16 = v13;
        if (v15 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
          v6 = v20;
        }

        v18 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserState, 0x277D7FB18);
        v19 = &protocol witness table for ICMediaUserState;
        *&v17 = v16;
        *(v6 + 16) = v15 + 1;
        outlined init with take of DomainWarmupHandling(&v17, v6 + 40 * v15 + 32);
        ++v12;
        --v5;
      }

      while (v5);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [ICMediaUserState], @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserState, 0x277D7FB18);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a3;
  v5(v6, a3);
}

uint64_t protocol witness for static MediaUserStateCenter.sharedStateCenter.getter in conformance ICMediaUserStateCenter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = [objc_opt_self() shared];
  result = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for ICMediaUserStateCenter, 0x277D7FB20);
  a2[3] = result;
  a2[4] = a1;
  *a2 = v4;
  return result;
}

void protocol witness for MediaUserStateCenter.refreshStates(completion:) in conformance ICMediaUserStateCenter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = closure #1 in ICMediaUserStateCenter.refreshStates(completion:)partial apply;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [ICMediaUserState], @guaranteed Error?) -> ();
  v8[3] = &block_descriptor_7;
  v7 = _Block_copy(v8);

  [v5 refreshUserStatesWithCompletion_];
  _Block_release(v7);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay12SiriOntology13UsoIdentifierVGGMd, &_ss23_ContiguousArrayStorageCySay12SiriOntology13UsoIdentifierVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology13UsoIdentifierVGMd, &_sSay12SiriOntology13UsoIdentifierVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS4name_SS10identifiertGMd, &_ss23_ContiguousArrayStorageCySS4name_SS10identifiertGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_SS10identifiertMd, &_sSS4name_SS10identifiertMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch7AppDataVtGMd, &_ss23_ContiguousArrayStorageCySS_21SiriInformationSearch7AppDataVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_21SiriInformationSearch7AppDataVtMd, &_sSS_21SiriInformationSearch7AppDataVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of DomainWarmupHandling(&v12, v10 + 40 * a1 + 32);
}

uint64_t outlined init with copy of Google_Protobuf_Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized BidirectionalCollection.last.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

void *AFSpeechRecognition.toAsrHypotheses()()
{
  v1 = v0;
  v144 = type metadata accessor for UUID();
  v2 = *(v144 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v144, v4);
  v143 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v127 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nlu_External_AsrHypothesis();
  v147 = *(v17 - 8);
  v18 = *(v147 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v142 = v127 - v24;
  v25 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation();
  v153 = *(v25 - 8);
  v26 = *(v153 + 64);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v160 = v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v155 = v127 - v31;
  v32 = [v1 utterances];
  if (!v32)
  {
LABEL_124:
    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_151;
    }

    goto LABEL_125;
  }

  v33 = v32;
  v174 = v2;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for AFSpeechUtterance, 0x277CEF4B8);
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = [v1 phrases];
  if (!v35)
  {

    goto LABEL_124;
  }

  v36 = v35;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for AFSpeechPhrase, 0x277CEF478);
  v161 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v154 = v34;
  if (v34 >> 62)
  {
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v142;
  if (!v37)
  {

    return MEMORY[0x277D84F90];
  }

  v39 = 0;
  v159 = v154 & 0xC000000000000001;
  v141 = v154 & 0xFFFFFFFFFFFFFF8;
  v140 = v154 + 32;
  v40 = v161 & 0xFFFFFFFFFFFFFF8;
  v173 = v161 & 0xFFFFFFFFFFFFFF8;
  if (v161 < 0)
  {
    v40 = v161;
  }

  v127[1] = v40;
  v170 = v161 & 0xC000000000000001;
  v151 = (v153 + 16);
  v150 = v153 + 8;
  v149 = v153 + 32;
  v134 = (v174 + 8);
  v133 = (v12 + 48);
  v128 = (v12 + 32);
  v132 = (v147 + 16);
  v131 = v147 + 8;
  v130 = v147 + 32;
  v157 = MEMORY[0x277D84F90];
  v139 = v10;
  v138 = v11;
  v137 = v16;
  v136 = v17;
  v135 = v22;
  v152 = v25;
  v158 = v37;
  while (1)
  {
    if (v159)
    {
      v41 = v39;
      v42 = MEMORY[0x223DDFF80](v39, v154);
      v43 = __OFADD__(v41, 1);
      v44 = v41 + 1;
      if (v43)
      {
        goto LABEL_134;
      }
    }

    else
    {
      if (v39 >= *(v141 + 16))
      {
        goto LABEL_147;
      }

      v45 = v39;
      v42 = *(v140 + 8 * v39);
      v43 = __OFADD__(v45, 1);
      v44 = v45 + 1;
      if (v43)
      {
        goto LABEL_134;
      }
    }

    v166 = v44;
    v169 = v42;
    v46 = [v42 interpretationIndices];
    if (!v46)
    {
      goto LABEL_119;
    }

    v47 = v46;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v172 = v48 >> 62;
    v49 = v48 >> 62 ? __CocoaSet.count.getter() : *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v161 >> 62)
    {
      if (v49 != __CocoaSet.count.getter())
      {
LABEL_118:

LABEL_119:
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v119 = type metadata accessor for Logger();
        __swift_project_value_buffer(v119, static Logger.pommes);
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          _os_log_impl(&dword_2232BB000, v120, v121, "Phrase length is not the same as interpretationIndices.", v122, 2u);
          MEMORY[0x223DE0F80](v122, -1, -1);
        }

        goto LABEL_10;
      }

      v175 = 0;
      v176 = 0xE000000000000000;
      v49 = __CocoaSet.count.getter();
    }

    else
    {
      if (v49 != *(v173 + 16))
      {
        goto LABEL_118;
      }

      v175 = 0;
      v176 = 0xE000000000000000;
    }

    v50 = v48 & 0xFFFFFFFFFFFFFF8;
    v174 = v48 & 0xFFFFFFFFFFFFFF8;
    if (v48 < 0)
    {
      v50 = v48;
    }

    v164 = v50;
    if (v49)
    {
      break;
    }

    v168 = MEMORY[0x277D84F90];
LABEL_106:

    Siri_Nlu_External_AsrHypothesis.init()();
    String.sanitize()(v175, v176);
    Siri_Nlu_External_AsrHypothesis.utterance.setter();
    [v169 confidenceScore];
    Siri_Nlu_External_AsrHypothesis.probability.setter();
    MEMORY[0x223DDC000](v168);
    v106 = v143;
    UUID.init()();
    v107 = v139;
    static ConversionUtils.convertUuidToProto(uuid:)();
    (*v134)(v106, v144);
    v108 = *v133;
    v109 = v138;
    if ((*v133)(v107, 1, v138) == 1)
    {
      Siri_Nlu_External_UUID.init()();
      v110 = v108(v107, 1, v109);
      v111 = v136;
      v112 = v135;
      if (v110 != 1)
      {
        outlined destroy of Siri_Nlu_External_UUID?(v107);
      }
    }

    else
    {
      (*v128)(v137, v107, v109);
      v111 = v136;
      v112 = v135;
    }

    Siri_Nlu_External_AsrHypothesis.id.setter();
    (*v132)(v112, v38, v111);
    v113 = v157;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v113[2] + 1, 1, v113);
    }

    v115 = v113[2];
    v114 = v113[3];
    v157 = v113;
    v116 = v169;
    if (v115 >= v114 >> 1)
    {
      v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v114 > 1, v115 + 1, 1, v157);
      v116 = v169;
    }

    v117 = v147;
    (*(v147 + 8))(v38, v111);
    v118 = v157;
    v157[2] = v115 + 1;
    (*(v117 + 32))(v118 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v115, v112, v111);
LABEL_10:
    v39 = v166;
    if (v166 == v158)
    {

      return v157;
    }
  }

  v51 = 0;
  v165 = 0;
  v171 = v48 & 0xC000000000000001;
  v168 = MEMORY[0x277D84F90];
  v52 = v161;
  v162 = v48;
  v167 = v49;
LABEL_27:
  v53 = v51 + 4;
  while (1)
  {
    v54 = v53 - 4;
    if (v170)
    {
      v55 = MEMORY[0x223DDFF80](v53 - 4, v52);
    }

    else
    {
      if (v54 >= *(v173 + 16))
      {
        goto LABEL_132;
      }

      v55 = *(v52 + 8 * v53);
    }

    v56 = v55;
    v51 = v53 - 3;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v172)
    {
      if (v54 == __CocoaSet.count.getter())
      {
LABEL_104:

LABEL_105:
        v38 = v142;
        goto LABEL_106;
      }
    }

    else if (v54 == *(v174 + 16))
    {
      goto LABEL_104;
    }

    if (v171)
    {
      v57 = MEMORY[0x223DDFF80](v53 - 4, v48);
    }

    else
    {
      if (v54 >= *(v174 + 16))
      {
        goto LABEL_133;
      }

      v57 = *(v48 + 8 * v53);
    }

    v58 = v57;
    v59 = [v56 interpretations];
    if (v59)
    {
      v60 = v59;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for AFSpeechInterpretation, 0x277CEF458);
      v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v62 = [v58 integerValue];
      if (v61 >> 62)
      {
        if (v62 >= __CocoaSet.count.getter())
        {
LABEL_56:

          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v72 = type metadata accessor for Logger();
          __swift_project_value_buffer(v72, static Logger.pommes);
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&dword_2232BB000, v73, v74, "Invalid interpretation index.", v75, 2u);
            MEMORY[0x223DE0F80](v75, -1, -1);
          }

          v48 = v162;
          v49 = v167;
          goto LABEL_29;
        }
      }

      else if (v62 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v63 = [v58 integerValue];
      if ((v61 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x223DDFF80](v63, v61);
      }

      else
      {
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_135;
        }

        if (v63 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_136;
        }

        v64 = *(v61 + 8 * v63 + 32);
      }

      v65 = v64;
      v66 = [v64 tokens];
      if (!v66)
      {

        v49 = v167;
        goto LABEL_29;
      }

      v67 = v66;
      v163 = v65;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for AFSpeechToken, 0x277CEF4B0);
      v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = v68;
      if (!(v68 >> 62))
      {
        v70 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v71 = v163;
        if (v70)
        {
          goto LABEL_63;
        }

        goto LABEL_51;
      }

      v70 = __CocoaSet.count.getter();
      v71 = v163;
      if (!v70)
      {
LABEL_51:

        v49 = v167;
        goto LABEL_29;
      }

LABEL_63:
      v76 = 0;
      v148 = v68 & 0xC000000000000001;
      v129 = v68 & 0xFFFFFFFFFFFFFF8;
      v146 = v68;
      v145 = v70;
      while (2)
      {
        if (v148)
        {
          v77 = MEMORY[0x223DDFF80](v76, v69);
        }

        else
        {
          if (v76 >= *(v129 + 16))
          {
            goto LABEL_149;
          }

          v77 = *(v69 + 8 * v76 + 32);
        }

        v78 = v77;
        if (__OFADD__(v76, 1))
        {
          goto LABEL_137;
        }

        Siri_Nlu_External_AsrTokenInformation.init()();
        [v78 removeSpaceBefore];
        Siri_Nlu_External_AsrTokenInformation.removeSpaceBefore.setter();
        v79 = Siri_Nlu_External_AsrTokenInformation.removeSpaceBefore.getter();
        v156 = v76 + 1;
        if (v79)
        {
          v80 = specialized BidirectionalCollection.last.getter(v175, v176);
          if (v81)
          {
            if (v80 == 32 && v81 == 0xE100000000000000)
            {

              goto LABEL_75;
            }

            v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v83)
            {
LABEL_75:
              if (!v165)
              {
                goto LABEL_150;
              }

              --v165;
              specialized RangeReplaceableCollection<>.removeLast()(v82);
            }
          }
        }

        v84 = [v78 text];
        if (v84)
        {
          v85 = v84;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        Siri_Nlu_External_AsrTokenInformation.postItnText.setter();
        v86 = Siri_Nlu_External_AsrTokenInformation.postItnText.getter();
        MEMORY[0x223DDF6D0](v86);

        v87 = [v78 phoneSequence];
        if (v87)
        {
          v88 = v87;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        Siri_Nlu_External_AsrTokenInformation.phoneSequence.setter();
        v89 = [v78 ipaPhoneSequence];
        if (v89)
        {
          v90 = v89;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        Siri_Nlu_External_AsrTokenInformation.ipaPhoneSequence.setter();
        [v78 removeSpaceAfter];
        Siri_Nlu_External_AsrTokenInformation.removeSpaceAfter.setter();
        Siri_Nlu_External_AsrTokenInformation.removeSpaceAfter.getter();
        Siri_Nlu_External_AsrTokenInformation.addSpaceAfter.setter();
        [v78 confidenceScore];
        Siri_Nlu_External_AsrTokenInformation.confidenceScore.setter();
        Siri_Nlu_External_AsrTokenInformation.beginIndex.setter();
        v91 = Siri_Nlu_External_AsrTokenInformation.beginIndex.getter();
        result = [v78 text];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v93 = result;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v94 = String.count.getter();

        if ((v94 & 0x8000000000000000) != 0)
        {
          goto LABEL_138;
        }

        if (HIDWORD(v94))
        {
          goto LABEL_139;
        }

        if (__CFADD__(v91, v94))
        {
          goto LABEL_140;
        }

        v95 = v155;
        Siri_Nlu_External_AsrTokenInformation.endIndex.setter();
        v165 = Siri_Nlu_External_AsrTokenInformation.endIndex.getter();
        v96 = Siri_Nlu_External_AsrTokenInformation.addSpaceAfter.getter();
        v97 = v152;
        if (v96)
        {
          if (v165 == -1)
          {
            goto LABEL_148;
          }

          ++v165;
          MEMORY[0x223DDF6D0](32, 0xE100000000000000);
        }

        [v78 startTime];
        v99 = v98 * 1000.0;
        if ((*&v99 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_141;
        }

        if (v99 <= -2147483650.0)
        {
          goto LABEL_142;
        }

        if (v99 >= 2147483650.0)
        {
          goto LABEL_143;
        }

        Siri_Nlu_External_AsrTokenInformation.startMilliSeconds.setter();
        [v78 endTime];
        v101 = v100 * 1000.0;
        if ((*&v101 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_144;
        }

        if (v101 <= -2147483650.0)
        {
          goto LABEL_145;
        }

        if (v101 >= 2147483650.0)
        {
          goto LABEL_146;
        }

        Siri_Nlu_External_AsrTokenInformation.endMilliSeconds.setter();
        (*v151)(v160, v95, v97);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v168[2] + 1, 1, v168);
        }

        v103 = v168[2];
        v102 = v168[3];
        if (v103 >= v102 >> 1)
        {
          v168 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v102 > 1, v103 + 1, 1, v168);
        }

        v104 = v153;
        (*(v153 + 8))(v95, v97);
        v105 = v168;
        v168[2] = v103 + 1;
        (*(v104 + 32))(v105 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v103, v160, v97);
        ++v76;
        v52 = v161;
        v48 = v162;
        v69 = v146;
        if (v156 == v145)
        {

          v49 = v167;
          v38 = v142;
          if (v51 != v167)
          {
            goto LABEL_27;
          }

          goto LABEL_106;
        }

        continue;
      }
    }

LABEL_29:
    ++v53;
    if (v51 == v49)
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  swift_once();
LABEL_125:
  v123 = type metadata accessor for Logger();
  __swift_project_value_buffer(v123, static Logger.pommes);
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 0;
    _os_log_impl(&dword_2232BB000, v124, v125, "AFSpeechRecognition utterances/phrases is nil", v126, 2u);
    MEMORY[0x223DE0F80](v126, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t String.sanitize()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = a2;
  v13[2] = 0x2B5D735C5BLL;
  v13[3] = 0xE500000000000000;
  v13[0] = 32;
  v13[1] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v15 = v10;
  static CharacterSet.whitespacesAndNewlines.getter();
  v11 = StringProtocol.trimmingCharacters(in:)();
  (*(v5 + 8))(v9, v4);

  return v11;
}

uint64_t outlined destroy of Siri_Nlu_External_UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMd, &_s12SiriNLUTypes0A18_Nlu_External_UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DownloadedFeaturiser.name.getter()
{
  type metadata accessor for DownloadedFeaturiser();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch20DownloadedFeaturiserCmMd, &_s21SiriInformationSearch20DownloadedFeaturiserCmMR);
  return String.init<A>(describing:)();
}

uint64_t DownloadedFeaturiser.__allocating_init(query:)(uint64_t a1)
{
  v2 = swift_allocObject();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.pommes);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest);

    _os_log_impl(&dword_2232BB000, v4, v5, "DownloadedFeaturiser : networkAvailable=%{BOOL}d", v6, 8u);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }

  else
  {
  }

  v7 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest);

  *(v2 + 16) = v7;
  return v2;
}

uint64_t DownloadedFeaturiser.init(query:)(uint64_t a1)
{
  v1 = specialized DownloadedFeaturiser.init(query:)(a1);

  return v1;
}

void DownloadedFeaturiser.featurise(candidate:rankedSlotIndex:)(void **a1)
{
  v2 = v1;
  v3 = *a1;
  if (*(*a1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source) == 1)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      v12 = MEMORY[0x277D85000];
      v13 = (*((*MEMORY[0x277D85000] & *v3) + 0xB8))(v4);
      v11 = *((*v12 & *v13) + 0xD0);
      v9.n128_u32[0] = 1.0;
      v14 = v13;
      goto LABEL_12;
    }
  }

  v6 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_isDownloaded);
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v3) + 0xB8))(v4);
  v10 = *(v2 + 16);
  v11 = *((*v7 & *v8) + 0xD0);
  v14 = v8;
  if (v6 == 1)
  {
    v9.n128_u32[0] = 1065395159;
    if (*(v2 + 16))
    {
      v9.n128_f32[0] = 1.0005;
    }
  }

  else
  {
    v9.n128_u64[0] = 0;
    if (*(v2 + 16))
    {
      v9.n128_f32[0] = 1.0;
    }
  }

LABEL_12:
  v11(v9);
}

uint64_t specialized DownloadedFeaturiser.init(query:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest);

    _os_log_impl(&dword_2232BB000, v5, v6, "DownloadedFeaturiser : networkAvailable=%{BOOL}d", v7, 8u);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  else
  {
  }

  *(v2 + 16) = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest);
  return v2;
}

Swift::Int PommesBridge.PommesBridgeError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](a1);
  return Hasher._finalize()();
}

uint64_t PommesBridge.pommesSearch.setter(uint64_t a1)
{
  v2 = direct field offset for PommesBridge.pommesSearch;
  v3 = *(v1 + direct field offset for PommesBridge.pommesSearch);
  *(v1 + direct field offset for PommesBridge.pommesSearch) = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = *(v1 + v2);

    MessageDispatchingBridgeBase.serviceHelper.getter();
    (*(*v4 + 248))();

    swift_unknownObjectRelease();
  }
}

uint64_t key path setter for PommesBridge.currentSessionId : PommesBridge(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v10 - v7;
  outlined init with copy of MediaUserStateCenter?(a1, &v10 - v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*(**a2 + class metadata base offset for PommesBridge + 80))(v8);
}

uint64_t PommesBridge.isMultiUser.setter(char a1)
{
  v3 = direct field offset for PommesBridge.isMultiUser;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesBridge.isOnlyUserInHome.setter(char a1)
{
  v3 = direct field offset for PommesBridge.isOnlyUserInHome;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  outlined init with copy of AppDataProviding(a3, v16);
  outlined init with copy of AppDataProviding(a6, v15);
  v13 = (*(v6 + class metadata base offset for PommesBridge + 168))(a1, a2, v16, a4, a5, v15, 0);
  __swift_destroy_boxed_opaque_existential_1(a6);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v13;
}

uint64_t PommesBridge.__allocating_init(_:_:_:_:_:pommesSearch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  swift_allocObject();
  v17 = specialized PommesBridge.init(_:_:_:_:_:pommesSearch:)(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();

  return v17;
}

uint64_t PommesBridge.init(_:_:_:_:_:pommesSearch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = specialized PommesBridge.init(_:_:_:_:_:pommesSearch:)(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();

  return v8;
}

void closure #1 in PommesBridge.init(_:_:_:_:_:pommesSearch:)()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    __swift_project_value_buffer(v0, static Logger.pommes);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2232BB000, v1, v2, "Initializing PommesSearch async", v3, 2u);
      MEMORY[0x223DE0F80](v3, -1, -1);
    }

    type metadata accessor for PommesSearch();
    v4 = PommesSearch.__allocating_init()();
    PommesBridge.pommesSearch.setter(v4);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.pommes);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2232BB000, v6, v7, "PommesBridge deallocated before PommesSearch set up", v8, 2u);
      MEMORY[0x223DE0F80](v8, -1, -1);
    }
  }
}

uint64_t PommesBridge.handleMUXContextMessage(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = MessageBase.assistantId.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2232BB000, v6, v7, "MUXContextMessage received for assistantId: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223DE0F80](v9, -1, -1);
    MEMORY[0x223DE0F80](v8, -1, -1);
  }

  v13 = MUXContextMessage.isRMVEnabled.getter();
  (*(*v2 + class metadata base offset for PommesBridge + 128))(v13 & 1);
  v14 = static MUXUtils.singleKnownUserInHome(muxContextMessage:)();
  result = (*(*v2 + class metadata base offset for PommesBridge + 152))(v14 & 1);
  v16 = *(v2 + direct field offset for PommesBridge.pommesSearch);
  if (v16)
  {
    v17 = *(*v16 + 344);

    v17(v5);
  }

  return result;
}

void PommesBridge.handleRunPOMMESRequest(_:_:_:)(void *a1)
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = [v3 debugDescription];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v17);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_2232BB000, v4, v5, "Received SARDRunPOMMESRequest: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223DE0F80](v7, -1, -1);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }

  if (dispatch thunk of CandidateRequestAwareBridgeBase.activeRequestProcessor.getter())
  {
    type metadata accessor for PommesBridgeRequestProcessor(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      (*(*v13 + class metadata base offset for PommesBridgeRequestProcessor + 360))(v3);

      return;
    }
  }

  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2232BB000, oslog, v14, "Unable to handle SARDRunPOMMESRequest because there is no active PommesBridgeRequestProcessor", v15, 2u);
    MEMORY[0x223DE0F80](v15, -1, -1);
  }
}

uint64_t PommesBridge.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for PommesBridge.pommesSearch);

  v2 = *(v0 + direct field offset for PommesBridge.instrumentationUtil);

  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridge.currentSessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridge.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
}

uint64_t PommesBridge.deinit()
{
  v0 = CandidateRequestAwareBridgeBase.deinit();
  v1 = *(v0 + direct field offset for PommesBridge.pommesSearch);

  v2 = *(v0 + direct field offset for PommesBridge.instrumentationUtil);

  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridge.currentSessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridge.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);
  return v0;
}

uint64_t PommesBridge.__deallocating_deinit()
{
  v0 = CandidateRequestAwareBridgeBase.deinit();
  v1 = *(v0 + direct field offset for PommesBridge.pommesSearch);

  v2 = *(v0 + direct field offset for PommesBridge.instrumentationUtil);

  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridge.currentSessionId, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of MediaUserStateCenter?(v0 + direct field offset for PommesBridge.sessionState, &_s16SiriMessageTypes24ConversationSessionState_pSgMd, &_s16SiriMessageTypes24ConversationSessionState_pSgMR);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized PommesBridge.init(_:_:_:_:_:pommesSearch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v66 = a5;
  v67 = a7;
  v70 = a4;
  started = a1;
  v65 = a2;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v60 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v61, v15);
  v58 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MessageHandlerType();
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + direct field offset for PommesBridge.pommesSearch) = 0;
  v29 = direct field offset for PommesBridge.currentSessionId;
  v30 = type metadata accessor for UUID();
  (*(*(v30 - 8) + 56))(v7 + v29, 1, 1, v30);
  v31 = v7 + direct field offset for PommesBridge.sessionState;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0;
  *(v7 + direct field offset for PommesBridge.isMultiUser) = 0;
  *(v7 + direct field offset for PommesBridge.isOnlyUserInHome) = 0;
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  *(v7 + direct field offset for PommesBridge.instrumentationUtil) = static PommesBridgeInstrumentationUtil.sharedInstance;
  v69 = a3;
  outlined init with copy of AppDataProviding(a3, aBlock);
  v68 = a6;
  outlined init with copy of AppDataProviding(a6, v72);
  v32 = one-time initialization token for pommes;

  swift_unknownObjectRetain();
  v33 = v66;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v23, static Logger.pommes);
  v35 = *(v24 + 16);
  v66 = v34;
  v35(v28);
  v57 = v33;
  v36 = CandidateRequestAwareBridgeBase.init(name:messagePublisher:serviceHelper:queue:conversationSessionsManager:logger:waitBeforeReplacingActiveRequest:)();
  type metadata accessor for SessionStartedMessage();
  dispatch thunk of MessageDispatchingBridgeBase.registerMessageHandler<A>(_:)();
  type metadata accessor for SessionEndedMessage();
  dispatch thunk of MessageDispatchingBridgeBase.registerMessageHandler<A>(_:)();
  type metadata accessor for MUXContextMessage();
  dispatch thunk of MessageDispatchingBridgeBase.registerMessageHandler<A>(_:)();
  v37 = *MEMORY[0x277D60070];
  v38 = v18[13];
  v38(v22, v37, v17);
  type metadata accessor for StartSpeechRequestMessage();
  type metadata accessor for PommesBridgeRequestProcessor(0);
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39 = v18[1];
  v39(v22, v17);
  v38(v22, v37, v17);
  type metadata accessor for StartChildSpeechRequestMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, v37, v17);
  type metadata accessor for StartChildTextRequestMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  LODWORD(v65) = v37;
  v38(v22, v37, v17);
  type metadata accessor for StartTextRequestMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, v37, v17);
  started = type metadata accessor for StartLocalRequestMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, *MEMORY[0x277D60090], v17);
  type metadata accessor for EndRequestMessageBase();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v40 = *MEMORY[0x277D60098];
  v38(v22, v40, v17);
  type metadata accessor for RequestContextMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, v40, v17);
  type metadata accessor for NLResultCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, v40, v17);
  type metadata accessor for TextBasedResultCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, v40, v17);
  type metadata accessor for GestureBasedResultCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, v40, v17);
  type metadata accessor for AsrResultCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, v40, v17);
  type metadata accessor for FallbackToPommesMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, v40, v17);
  type metadata accessor for TextBasedTRPCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, v40, v17);
  type metadata accessor for RewrittenUtteranceCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, v40, v17);
  type metadata accessor for NLTRPCandidateMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, v40, v17);
  type metadata accessor for TTResponseMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, v40, v17);
  type metadata accessor for TRPCandidateRequestMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, *MEMORY[0x277D60080], v17);
  type metadata accessor for StartCandidateRequestMessage();
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  v38(v22, v65, v17);
  dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
  v39(v22, v17);
  if (AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags())
  {
    v38(v22, v40, v17);
    type metadata accessor for RunPommesRequestMessage();
    dispatch thunk of CandidateRequestAwareBridgeBase.registerMessageHandler<A, B>(_:messageHandlerType:)();
    v39(v22, v17);
  }

  else
  {
    type metadata accessor for SARDRunPOMMESRequest();
    dispatch thunk of MessageDispatchingBridgeBase.registerCommandHandler<A>(_:)();
  }

  v41 = v69;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v44 = os_log_type_enabled(v42, v43);
  v45 = v67;
  if (v67)
  {
    if (v44)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2232BB000, v42, v43, "PommesSearch provided to initializer", v46, 2u);
      MEMORY[0x223DE0F80](v46, -1, -1);
    }

    v47 = *(v36 + direct field offset for PommesBridge.pommesSearch);
    *(v36 + direct field offset for PommesBridge.pommesSearch) = v45;
  }

  else
  {
    if (v44)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2232BB000, v42, v43, "Using default PommesSearch, dispatching to initialize", v48, 2u);
      MEMORY[0x223DE0F80](v48, -1, -1);
    }

    v49 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in PommesBridge.init(_:_:_:_:_:pommesSearch:);
    aBlock[5] = v49;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_9;
    v50 = _Block_copy(aBlock);

    v51 = v58;
    static DispatchQoS.unspecified.getter();
    v72[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v52 = v60;
    v53 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223DDFBF0](0, v51, v52, v50);
    _Block_release(v50);
    (*(v62 + 8))(v52, v53);
    (*(v59 + 8))(v51, v61);
  }

  v54 = v68;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v55 = v70;
  (*(*static PommesSearchService.shared + 112))(v70);
  swift_beginAccess();
  ServiceHelperManager.setServiceHelper(_:)(v55);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v36;
}

unint64_t lazy protocol witness table accessor for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError()
{
  result = lazy protocol witness table cache variable for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError;
  if (!lazy protocol witness table cache variable for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError;
  if (!lazy protocol witness table cache variable for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesBridge.PommesBridgeError and conformance PommesBridge.PommesBridgeError);
  }

  return result;
}

uint64_t type metadata accessor for PommesBridge()
{
  result = type metadata singleton initialization cache for PommesBridge;
  if (!type metadata singleton initialization cache for PommesBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PommesBridge()
{
  type metadata accessor for UUID?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

unint64_t type metadata accessor for SARDRunPOMMESRequest()
{
  result = lazy cache variable for type metadata for SARDRunPOMMESRequest;
  if (!lazy cache variable for type metadata for SARDRunPOMMESRequest)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SARDRunPOMMESRequest);
  }

  return result;
}

uint64_t static AppInfoDataProvider.make(appDataProvider:preferences:)(uint64_t a1, void *a2)
{
  outlined init with copy of AppDataProviding(a1, v6);
  type metadata accessor for AppInfoDataProvider();
  v3 = swift_allocObject();
  outlined init with take of PommesAppChecking(v6, v3 + 16);
  *(v3 + 56) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v4 = a2;
  return specialized AnyDataProvider.init<A>(provider:)(v3);
}

uint64_t AppInfoDataProvider.__allocating_init(appDataProvider:preferences:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  outlined init with take of PommesAppChecking(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t AppInfoDataProvider.init(appDataProvider:preferences:)(uint64_t a1, uint64_t a2)
{
  outlined init with take of PommesAppChecking(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t AppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(int *a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v38, v10);
  v41 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Date();
  v12 = *(v36 - 8);
  v13 = *(v12 + 8);
  v15 = MEMORY[0x28223BE20](v36, v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v35 = &v34;
    v19 = static PerformanceUtil.shared;
    MEMORY[0x28223BE20](v15, v16);
    v32 = a1;
    v33 = v37;
    Date.init()();
    v20 = *(*v19 + 200);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVGMd, &_sSay10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVGMR);
    v32 = &v31;
    v33 = v21;
    LOBYTE(v31) = 2;
    a1 = 0;
    v20(&v42, 0xD000000000000038, 0x80000002234DC690, 0, v18, "SiriInformationSearch/AppInfoDataProvider.swift", 47, 2, 44, "fetch(for:assistantData:serviceHelper:dispatchQueue:)", 53, v31, partial apply for closure #1 in AppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:));
    v22 = *(v12 + 1);
    v12 += 8;
    v22(v18, v36);
    v23 = v42;
    v24 = *(v42 + 16);
    if (!v24)
    {
      break;
    }

    v42 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v25 = 0;
    v26 = v42;
    v37 = v23 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v27 = (v40 + 8);
    v35 = (v8 + 32);
    v36 = v40 + 16;
    while (v25 < *(v23 + 16))
    {
      v28 = v39;
      (*(v40 + 16))(v7, v37 + *(v40 + 72) * v25, v39);
      closure #2 in AppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(v7, v41);
      (*v27)(v7, v28);
      v42 = v26;
      v18 = *(v26 + 16);
      v29 = *(v26 + 24);
      v12 = (v18 + 1);
      if (v18 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v18 + 1, 1);
        v26 = v42;
      }

      ++v25;
      *(v26 + 16) = v12;
      (*(v8 + 32))(v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v41, v38);
      if (v24 == v25)
      {

        return v26;
      }
    }

    __break(1u);
LABEL_12:
    v15 = swift_once();
  }

  return MEMORY[0x277D84F90];
}

uint64_t closure #1 in AppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(void (*a1)(char *, unint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v56 = a2;
  v61 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVSgMd, &_s10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v49 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v57 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_Span();
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = v49 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = v49 - v28;
  outlined init with copy of MediaUserStateCenter?(v61, v24, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v30 = type metadata accessor for PommesSearchRequest(0);
  if ((*(*(v30 - 8) + 48))(v24, 1, v30) != 1)
  {
    outlined init with copy of MediaUserStateCenter?(&v24[*(v30 + 44)], v29, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    outlined destroy of PerformanceUtil.Ticket(v24, type metadata accessor for PommesSearchRequest);
    v34 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v29, 1, v34) == 1)
    {
      v31 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd;
      v32 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR;
      v33 = v29;
      goto LABEL_5;
    }

    v38 = Siri_Nlu_External_Span.matcherNames.getter();
    (*(v35 + 8))(v29, v34);
    v39 = *(v38 + 16);
    if (!v39)
    {

      goto LABEL_6;
    }

    v49[1] = v38;
    v50 = a3;
    v40 = *(v62 + 16);
    v41 = v38 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v60 = *(v62 + 72);
    v61 = v40;
    v62 += 16;
    v42 = (v62 - 8);
    v43 = v55;
    v59 = (v54 + 56);
    v52 = (v54 + 32);
    v53 = (v54 + 48);
    v58 = MEMORY[0x277D84F90];
    v40(v19, v41, v15);
    while (1)
    {
      AppInfoDataProvider.equivalentAppInfo(span:)(v19, v10);
      if (v4)
      {
        break;
      }

      (*v42)(v19, v15);
      if ((*v53)(v10, 1, v43) == 1)
      {
        goto LABEL_11;
      }

      v51 = *v52;
      v51(v57, v10, v43);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v44 = v58;
      }

      else
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
      }

      v46 = v44[2];
      v45 = v44[3];
      if (v46 >= v45 >> 1)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1, v44);
      }

      v44[2] = v46 + 1;
      v47 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v58 = v44;
      v48 = v44 + v47 + *(v54 + 72) * v46;
      v43 = v55;
      v51(v48, v57, v55);
LABEL_12:
      v41 += v60;
      if (!--v39)
      {

        a3 = v50;
        v37 = v58;
        goto LABEL_7;
      }

      v61(v19, v41, v15);
    }

    (*v42)(v19, v15);
    (*v59)(v10, 1, 1, v43);
    v4 = 0;
LABEL_11:
    outlined destroy of MediaUserStateCenter?(v10, &_s10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVSgMd, &_s10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVSgMR);
    goto LABEL_12;
  }

  v31 = &_s21SiriInformationSearch06PommesC7RequestVSgMd;
  v32 = &_s21SiriInformationSearch06PommesC7RequestVSgMR;
  v33 = v24;
LABEL_5:
  result = outlined destroy of MediaUserStateCenter?(v33, v31, v32);
LABEL_6:
  v37 = MEMORY[0x277D84F90];
LABEL_7:
  *a3 = v37;
  return result;
}

uint64_t closure #2 in AppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v56[6] = a2;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Google_Protobuf_Any();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v48 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v15 = *(v45 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v45, v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v20 = *(v50 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v50, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8, v27);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v45 - v32;
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
  v56[3] = v34;
  v56[4] = lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo, MEMORY[0x277D39018]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(v34 - 8) + 16))(boxed_opaque_existential_1, v46, v34);
  defaultAnyTypeURLPrefix.getter();
  v36 = v47;
  Google_Protobuf_Any.init(message:partial:typePrefix:)();
  if (v36)
  {

    v37 = 1;
  }

  else
  {
    v37 = 0;
  }

  (*(v11 + 56))(v33, v37, 1, v10);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.init()();
  (*(v15 + 104))(v19, *MEMORY[0x277D39AE8], v45);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  outlined init with copy of MediaUserStateCenter?(v33, v30, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v38 = *(v11 + 48);
  if (v38(v30, 1, v10) == 1)
  {
    Google_Protobuf_Any.init()();
    if (v38(v30, 1, v10) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v30, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    }
  }

  else
  {
    (*(v11 + 32))(v48, v30, v10);
  }

  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
  (*(v51 + 104))(v49, *MEMORY[0x277D39D58], v52);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  Apple_Parsec_Siri_V2alpha_ProfileSlice.init()();
  (*(v54 + 104))(v53, *MEMORY[0x277D39718], v55);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
  v39 = *(v20 + 72);
  v40 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2234CF920;
  v42 = v41 + v40;
  v43 = v50;
  (*(v20 + 16))(v42, v24, v50);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
  (*(v20 + 8))(v24, v43);
  return outlined destroy of MediaUserStateCenter?(v33, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
}

uint64_t AppInfoDataProvider.equivalentAppInfo(span:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v275 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_Span();
  v279 = *(v3 - 8);
  v4 = *(v279 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v284 = &v242 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v247 = &v242 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v254 = &v242 - v12;
  v272 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept();
  v273 = *(v272 - 8);
  v13 = *(v273 + 64);
  MEMORY[0x28223BE20](v272, v14);
  v244 = &v242 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for PerformanceUtil.Ticket(0);
  v16 = *(*(v243 - 8) + 64);
  MEMORY[0x28223BE20](v243, v17);
  v266 = (&v242 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v253 = type metadata accessor for Date();
  v255 = *(v253 - 8);
  v19 = *(v255 + 64);
  MEMORY[0x28223BE20](v253, v20);
  v252 = &v242 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = type metadata accessor for Google_Protobuf_StringValue();
  v250 = *(v251 - 8);
  v22 = *(v250 + 64);
  MEMORY[0x28223BE20](v251, v23);
  v249 = &v242 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan();
  v259 = *(v286 - 8);
  v25 = *(v259 + 64);
  MEMORY[0x28223BE20](v286, v26);
  v285 = &v242 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Siri_Nlu_External_SpanProperty();
  v287 = *(v28 - 8);
  v288 = v28;
  v29 = *(v287 + 64);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v282 = &v242 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v248 = &v242 - v34;
  v270 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v268 = *(v270 - 8);
  v35 = *(v268 + 64);
  v37 = MEMORY[0x28223BE20](v270, v36);
  v246 = &v242 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v262 = &v242 - v41;
  MEMORY[0x28223BE20](v40, v42);
  v261 = &v242 - v43;
  v267 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v258 = *(v267 - 8);
  v44 = *(v258 + 64);
  MEMORY[0x28223BE20](v267, v45);
  v257 = &v242 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Siri_Nlu_External_Span.MatcherName();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47, v50);
  v52 = &v242 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMR);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53, v55);
  v57 = &v242 - v56;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v58 = *(*(v265 - 8) + 64);
  v60 = MEMORY[0x28223BE20](v265, v59);
  v269 = &v242 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v60, v62);
  v283 = &v242 - v64;
  v66 = MEMORY[0x28223BE20](v63, v65);
  v68 = &v242 - v67;
  MEMORY[0x28223BE20](v66, v69);
  v71 = &v242 - v70;
  v274 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
  v276 = *(v274 - 8);
  v72 = *(v276 + 64);
  MEMORY[0x28223BE20](v274, v73);
  v278 = &v242 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_AppInfo.init()();
  v281 = a1;
  v75 = Siri_Nlu_External_Span.matcherNames.getter();
  v76 = *(v75 + 16);
  v280 = v3;
  v260 = v52;
  if (v76)
  {
    (*(v48 + 16))(v71, v75 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v47);
    v77 = 0;
  }

  else
  {
    v77 = 1;
  }

  v78 = *(v48 + 56);
  v78(v71, v77, 1, v47);
  (*(v48 + 104))(v68, *MEMORY[0x277D5DA08], v47);
  v264 = v48 + 56;
  v263 = v78;
  v78(v68, 0, 1, v47);
  v79 = *(v53 + 48);
  outlined init with copy of MediaUserStateCenter?(v71, v57, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  outlined init with copy of MediaUserStateCenter?(v68, &v57[v79], &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v271 = v48;
  v80 = *(v48 + 48);
  if (v80(v57, 1, v47) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v68, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    outlined destroy of MediaUserStateCenter?(v71, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    v81 = v80(&v57[v79], 1, v47);
    v82 = v279;
    if (v81 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v57, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
      v83 = v280;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v84 = v283;
  outlined init with copy of MediaUserStateCenter?(v57, v283, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  if (v80(&v57[v79], 1, v47) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v68, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    outlined destroy of MediaUserStateCenter?(v71, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
    (*(v271 + 8))(v84, v47);
    v82 = v279;
LABEL_9:
    v245 = v47;
    outlined destroy of MediaUserStateCenter?(v57, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSg_AFtMR);
    v83 = v280;
    v85 = v284;
    goto LABEL_10;
  }

  v96 = v271;
  v97 = v260;
  (*(v271 + 32))(v260, &v57[v79], v47);
  lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(&lazy protocol witness table cache variable for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName, MEMORY[0x277D5DA30]);
  v294 = dispatch thunk of static Equatable.== infix(_:_:)();
  v98 = *(v96 + 8);
  v98(v97, v47);
  outlined destroy of MediaUserStateCenter?(v68, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  outlined destroy of MediaUserStateCenter?(v71, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v245 = v47;
  v98(v283, v47);
  outlined destroy of MediaUserStateCenter?(v57, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV11MatcherNameOSgMR);
  v82 = v279;
  v83 = v280;
  v85 = v284;
  if ((v294 & 1) == 0)
  {
LABEL_10:
    if (one-time initialization token for pommes == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_122;
  }

LABEL_16:
  if (Siri_Nlu_External_Span.label.getter() == 0x656D614E707061 && v99 == 0xE700000000000000)
  {

    v100 = v268;
    v101 = v267;
  }

  else
  {
    v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v100 = v268;
    v101 = v267;
    if ((v102 & 1) == 0)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v141 = type metadata accessor for Logger();
      __swift_project_value_buffer(v141, static Logger.pommes);
      v142 = v247;
      (*(v82 + 16))(v247, v281, v83);
      v143 = Logger.logObject.getter();
      v144 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v143, v144))
      {

        (*(v82 + 8))(v142, v83);
        goto LABEL_88;
      }

      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v290[0] = v146;
      *v145 = 136315138;
      v147 = Siri_Nlu_External_Span.label.getter();
      v149 = v148;
      (*(v82 + 8))(v142, v83);
      v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v147, v149, v290);

      *(v145 + 4) = v150;
      _os_log_impl(&dword_2232BB000, v143, v144, "PegasusProxy#equivalentAppInfo matcher not appName label:%s", v145, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v146);
      MEMORY[0x223DE0F80](v146, -1, -1);
      v151 = v145;
      goto LABEL_79;
    }
  }

  v103 = v261;
  Siri_Nlu_External_Span.usoGraph.getter();
  v104 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  v105 = *(v100 + 8);
  v105(v103, v270);
  if (*(v104 + 16))
  {
    v106 = v258;
    v107 = v257;
    (*(v258 + 16))(v257, v104 + ((*(v106 + 80) + 32) & ~*(v106 + 80)), v101);

    v271 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
    v269 = v108;
    (*(v106 + 8))(v107, v101);
  }

  else
  {

    v271 = 0;
    v269 = 0xE000000000000000;
  }

  v115 = v262;
  Siri_Nlu_External_Span.usoGraph.getter();
  v116 = Siri_Nlu_External_UsoGraph.spans.getter();
  v105(v115, v270);
  v82 = *(v116 + 16);
  if (!v82)
  {

    v119 = MEMORY[0x277D84F90];
    v83 = *(MEMORY[0x277D84F90] + 16);
    if (!v83)
    {
      goto LABEL_52;
    }

LABEL_46:
    v82 = 0;
    v85 = (v287 + 16);
    v132 = *MEMORY[0x277D5F4F0];
    v133 = (v287 + 8);
    while (v82 < v119[2])
    {
      (*(v287 + 16))(v282, v119 + ((*(v287 + 80) + 32) & ~*(v287 + 80)) + *(v287 + 72) * v82, v288);
      v134 = Siri_Nlu_External_SpanProperty.key.getter();
      v136 = v135;
      if (v134 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v136 == v137)
      {

LABEL_58:

        v152 = v251;
        v153 = v250;
        v154 = v288;
        v155 = v287 + 32;
        v156 = v248;
        (*(v287 + 32))(v248, v282, v288);
        v157 = v249;
        Siri_Nlu_External_SpanProperty.valueString.getter();
        (*(v155 - 24))(v156, v154);
        v139 = Google_Protobuf_StringValue.value.getter();
        v140 = v158;
        (*(v153 + 8))(v157, v152);
        goto LABEL_59;
      }

      v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v138)
      {
        goto LABEL_58;
      }

      ++v82;
      (*v133)(v282, v288);
      if (v83 == v82)
      {
        goto LABEL_52;
      }
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v284 = *(v259 + 16);
  v117 = (*(v259 + 80) + 32) & ~*(v259 + 80);
  v268 = v116;
  v118 = v116 + v117;
  v283 = *(v259 + 72);
  v83 = (v259 + 8);
  v119 = MEMORY[0x277D84F90];
  do
  {
    v120 = v285;
    v121 = v286;
    (v284)(v285, v118, v286);
    v122 = Siri_Nlu_External_UsoEntitySpan.properties.getter();
    (*v83)(v120, v121);
    v123 = *(v122 + 16);
    v124 = v119[2];
    v85 = (v124 + v123);
    if (__OFADD__(v124, v123))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v85 <= v119[3] >> 1)
    {
      if (!*(v122 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v124 <= v85)
      {
        v126 = v124 + v123;
      }

      else
      {
        v126 = v124;
      }

      v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v126, 1, v119);
      if (!*(v122 + 16))
      {
LABEL_28:

        if (v123)
        {
          goto LABEL_117;
        }

        goto LABEL_29;
      }
    }

    if ((v119[3] >> 1) - v119[2] < v123)
    {
      goto LABEL_118;
    }

    v127 = (*(v287 + 80) + 32) & ~*(v287 + 80);
    v128 = *(v287 + 72);
    swift_arrayInitWithCopy();

    if (v123)
    {
      v129 = v119[2];
      v130 = __OFADD__(v129, v123);
      v131 = v129 + v123;
      if (v130)
      {
        goto LABEL_119;
      }

      v119[2] = v131;
    }

LABEL_29:
    v118 += v283;
    --v82;
  }

  while (v82);

  v83 = v119[2];
  if (v83)
  {
    goto LABEL_46;
  }

LABEL_52:

  v139 = 0;
  v140 = 0;
LABEL_59:
  v82 = v279;
  v83 = v280;
  v159 = v269 & 0x2000000000000000;
  v160 = HIBYTE(v269) & 0xF;
  v161 = v271 & 0xFFFFFFFFFFFFLL;
  if ((v269 & 0x2000000000000000) != 0)
  {
    v162 = HIBYTE(v269) & 0xF;
  }

  else
  {
    v162 = v271 & 0xFFFFFFFFFFFFLL;
  }

  v163 = v266;
  if (v162)
  {

    goto LABEL_66;
  }

  if (!v140)
  {
    goto LABEL_76;
  }

  v159 = v140 & 0x2000000000000000;
  v160 = HIBYTE(v140) & 0xF;
  v161 = v139 & 0xFFFFFFFFFFFFLL;
  v271 = v139;
  v269 = v140;
LABEL_66:
  if (v159)
  {
    v164 = v160;
  }

  else
  {
    v164 = v161;
  }

  if (!v164)
  {

LABEL_76:
    if (one-time initialization token for pommes != -1)
    {
LABEL_124:
      swift_once();
    }

    v175 = type metadata accessor for Logger();
    __swift_project_value_buffer(v175, static Logger.pommes);
    v176 = v254;
    (*(v82 + 16))(v254, v281, v83);
    v143 = Logger.logObject.getter();
    v177 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v143, v177))
    {

      (*(v82 + 8))(v176, v83);
      goto LABEL_88;
    }

    v178 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v290[0] = v179;
    *v178 = 136315138;
    Siri_Nlu_External_Span.usoGraph.getter();
    v180 = String.init<A>(describing:)();
    v181 = v176;
    v183 = v182;
    (*(v82 + 8))(v181, v83);
    v184 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v183, v290);

    *(v178 + 4) = v184;
    _os_log_impl(&dword_2232BB000, v143, v177, "PegasusProxy#equivalentAppInfo identifier not present in USO graph: %s", v178, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v179);
    MEMORY[0x223DE0F80](v179, -1, -1);
    v151 = v178;
LABEL_79:
    MEMORY[0x223DE0F80](v151, -1, -1);

LABEL_88:
    v114 = v274;
    v113 = v276;
    (*(v276 + 56))(v275, 1, 1, v274);
    return (*(v113 + 8))(v278, v114);
  }

  v165 = v256;
  v166 = v256[5];
  v167 = v256[6];
  __swift_project_boxed_opaque_existential_1(v256 + 2, v166);
  v168 = v271;
  v83 = v269;
  if (((*(v167 + 8))(v271, v269, v166, v167) & 1) == 0)
  {
    Siri_Nlu_External_Span.input.getter();
    Apple_Parsec_Siri_V2alpha_AppInfo.appName.setter();

    v185 = Apple_Parsec_Siri_V2alpha_AppInfo.bundleID.setter();
    v295 = 0;
    if (one-time initialization token for shared != -1)
    {
      v185 = swift_once();
    }

    v288 = &v242;
    v187 = static PerformanceUtil.shared;
    MEMORY[0x28223BE20](v185, v186);
    v238 = v165;
    v239 = v168;
    v240 = v83;
    v241 = &v295;
    v188 = v252;
    Date.init()();
    v189 = (*v187 + 200);
    v190 = *v189;
    v271 = v168;
    v191 = v189;
    v240 = &v237;
    v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch7AppDataVSgMd, &_s21SiriInformationSearch7AppDataVSgMR);
    LOBYTE(v238) = 2;
    v192 = v277;
    v284 = v191;
    v285 = v190;
    (v190)(v290, 0xD000000000000036, 0x80000002234DC7C0, 0, v188, "SiriInformationSearch/AppInfoDataProvider.swift", 47, 2, 105, "equivalentAppInfo(span:)", 24, v238, partial apply for closure #3 in AppInfoDataProvider.equivalentAppInfo(span:));
    v193 = v192;
    v195 = v255 + 8;
    v194 = *(v255 + 8);
    v194(v188, v253);
    v196 = v291;
    if (!v291)
    {
      v165 = v271;
      v203 = v276;
      if (v295 == 1)
      {

        v204 = *(v203 + 16);
        v114 = v274;
        v205 = v275;
        v204(v275, v278, v274);
        v113 = v276;
        (*(v276 + 56))(v205, 0, 1, v114);
        return (*(v113 + 8))(v278, v114);
      }

      if (one-time initialization token for pommes == -1)
      {
LABEL_112:
        v231 = type metadata accessor for Logger();
        __swift_project_value_buffer(v231, static Logger.pommes);

        v232 = Logger.logObject.getter();
        v233 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v232, v233))
        {
          v234 = swift_slowAlloc();
          v235 = swift_slowAlloc();
          v290[0] = v235;
          *v234 = 136315138;
          v236 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v165, v83, v290);

          *(v234 + 4) = v236;
          _os_log_impl(&dword_2232BB000, v232, v233, "PegasusProxy#equivalentAppInfo failed to resolve appData for bundleIdentifier:%s", v234, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v235);
          MEMORY[0x223DE0F80](v235, -1, -1);
          MEMORY[0x223DE0F80](v234, -1, -1);
        }

        else
        {
        }

        goto LABEL_24;
      }

LABEL_128:
      swift_once();
      goto LABEL_112;
    }

    v282 = v194;
    v255 = v195;
    v83 = v293;
    v197 = v290[1];
    v288 = v292;
    v198 = *(v291 + 16);
    Apple_Parsec_Siri_V2alpha_AppInfo.hasSiriIntegration_p.setter();
    v199 = *(v196 + 16);
    v283 = v187;
    if (v199)
    {
      v287 = v197;
      v277 = v192;
      v200 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v199, 0);
      v201 = specialized Sequence._copySequenceContents(initializing:)(v290, v200 + 4, v199, v196);
      v165 = v291;

      outlined consume of Set<String>.Iterator._Variant();
      if (v201 != v199)
      {
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v193 = v277;
      v163 = v266;
      v165 = v256;
      v202 = v243;
      v187 = v283;
    }

    else
    {
      v202 = v243;
    }

    Apple_Parsec_Siri_V2alpha_AppInfo.supportedIntents.setter();
    Date.init()();
    v206 = v163 + v202[5];
    *v206 = "SiriInformationSearch/AppInfoDataProvider.swift";
    *(v206 + 1) = 47;
    v206[16] = 2;
    *(v163 + v202[6]) = 119;
    v207 = v163 + v202[7];
    *v207 = "equivalentAppInfo(span:)";
    *(v207 + 1) = 24;
    v207[16] = 2;
    v208 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000001ELL);
    v83 = v163;
    v209 = (v163 + v202[8]);
    *v209 = v208;
    v209[1] = v210;
    v211 = AppInfoDataProvider.getVocabularyConcepts(bundleId:allowPlaceholder:)(v271, v269, 0);
    v212 = specialized Sequence.flatMap<A>(_:)(v211);
    v85 = v193;

    if (v212 >> 62)
    {
      v213 = __CocoaSet.count.getter();
    }

    else
    {
      v213 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v214 = v244;
    if (!v213)
    {

      v224 = v83;
LABEL_109:
      v225 = v278;
      Apple_Parsec_Siri_V2alpha_AppInfo.vocabConcepts.setter();
      v226 = (*(*v187 + 184))(v224, 0);
      v288 = &v242;
      MEMORY[0x28223BE20](v226, v227);
      LODWORD(v238) = v225;
      v228 = v252;
      Date.init()();
      v240 = &v237;
      v241 = (MEMORY[0x277D84F78] + 8);
      LOBYTE(v238) = 2;
      (v285)(0xD000000000000014, 0x80000002234DC840, 0, v228, "SiriInformationSearch/AppInfoDataProvider.swift", 47, 2, 146, "equivalentAppInfo(span:)", 24, v238, partial apply for closure #6 in AppInfoDataProvider.equivalentAppInfo(span:));

      (v282)(v228, v253);
      outlined destroy of PerformanceUtil.Ticket(v224, type metadata accessor for PerformanceUtil.Ticket);
      v229 = v275;
      v113 = v276;
      v114 = v274;
      (*(v276 + 16))(v275, v225, v274);
      (*(v113 + 56))(v229, 0, 1, v114);
      return (*(v113 + 8))(v278, v114);
    }

    v215 = v212;
    v290[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v213 & ~(v213 >> 63), 0);
    if ((v213 & 0x8000000000000000) == 0)
    {
      v216 = 0;
      v217 = v290[0];
      v218 = v215;
      v288 = (v215 & 0xC000000000000001);
      v286 = v215 & 0xFFFFFFFFFFFFFF8;
      v287 = v273 + 32;
      while (1)
      {
        v82 = v216 + 1;
        if (__OFADD__(v216, 1))
        {
          break;
        }

        if (v288)
        {
          v219 = MEMORY[0x223DDFF80](v216, v218);
        }

        else
        {
          if (v216 >= *(v286 + 16))
          {
            __break(1u);
            goto LABEL_124;
          }

          v219 = *(v218 + 8 * v216 + 32);
        }

        v220 = v219;
        v289 = v219;
        closure #5 in AppInfoDataProvider.equivalentAppInfo(span:)(&v289, v214);

        v290[0] = v217;
        v221 = v214;
        v223 = *(v217 + 16);
        v222 = *(v217 + 24);
        v83 = (v223 + 1);
        if (v223 >= v222 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v222 > 1, v223 + 1, 1);
          v217 = v290[0];
        }

        *(v217 + 16) = v83;
        (*(v273 + 32))(v217 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + *(v273 + 72) * v223, v221, v272);
        ++v216;
        v214 = v221;
        v218 = v215;
        if (v82 == v213)
        {

          v224 = v266;
          v187 = v283;
          goto LABEL_109;
        }
      }

LABEL_121:
      __break(1u);
LABEL_122:
      swift_once();
LABEL_11:
      v86 = type metadata accessor for Logger();
      __swift_project_value_buffer(v86, static Logger.pommes);
      (*(v82 + 16))(v85, v281, v83);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.debug.getter();
      v89 = os_log_type_enabled(v87, v88);
      v90 = v269;
      if (v89)
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v290[0] = v92;
        *v91 = 136315138;
        v93 = Siri_Nlu_External_Span.matcherNames.getter();
        if (*(v93 + 16))
        {
          v94 = v245;
          (*(v271 + 16))(v90, v93 + ((*(v271 + 80) + 32) & ~*(v271 + 80)), v245);
          v95 = 0;
        }

        else
        {
          v95 = 1;
          v94 = v245;
        }

        v263(v90, v95, 1, v94);
        v109 = String.init<A>(describing:)();
        v111 = v110;
        (*(v82 + 8))(v85, v280);
        v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v111, v290);

        *(v91 + 4) = v112;
        _os_log_impl(&dword_2232BB000, v87, v88, "PegasusProxy#equivalentAppInfo matcher not siriVocabularyMatcher matcherNames:%s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v92);
        MEMORY[0x223DE0F80](v92, -1, -1);
        MEMORY[0x223DE0F80](v91, -1, -1);
      }

      else
      {

        (*(v82 + 8))(v85, v83);
      }

      goto LABEL_24;
    }

    goto LABEL_127;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v169 = type metadata accessor for Logger();
  __swift_project_value_buffer(v169, static Logger.pommes);

  v170 = Logger.logObject.getter();
  v171 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v170, v171))
  {
    v172 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v290[0] = v173;
    *v172 = 136315138;
    v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v83, v290);

    *(v172 + 4) = v174;
    _os_log_impl(&dword_2232BB000, v170, v171, "PegasusProxy#equivalentAppInfo failed to resolve appData for hidden app bundleIdentifier:%s", v172, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v173);
    MEMORY[0x223DE0F80](v173, -1, -1);
    MEMORY[0x223DE0F80](v172, -1, -1);
  }

  else
  {
  }

LABEL_24:
  v113 = v276;
  v114 = v274;
  (*(v276 + 56))(v275, 1, 1, v274);
  return (*(v113 + 8))(v278, v114);
}

uint64_t specialized NSDictionary.arrayValue<A>(for:)()
{
  v1 = MEMORY[0x223DDF550]();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    outlined destroy of MediaUserStateCenter?(v14, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v10;
  v11 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of Any(v5, v14);
      outlined init with take of Any(v14, &v12);
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
      if ((swift_dynamicCast() & 1) != 0 && v9)
      {
        MEMORY[0x223DDF820]();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v7 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v11;
      }

      v5 += 32;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t closure #5 in AppInfoDataProvider.equivalentAppInfo(span:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  Apple_Parsec_Siri_V2alpha_AppVocabularyConcept.init()();
  v4 = *MEMORY[0x277CD4478];
  v5._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  object = NSDictionary.stringValue(for:)(v5).value._object;

  v40 = a2;
  if (object)
  {
    if (one-time initialization token for pommes != -1)
    {
LABEL_33:
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.pommes);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v39[0] = v34;
      *v10 = 136315138;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v39);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_2232BB000, v8, v9, "PegasusProxy#equivalentAppInfo unable find id from key:%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x223DE0F80](v34, -1, -1);
      MEMORY[0x223DE0F80](v10, -1, -1);
    }

    Apple_Parsec_Siri_V2alpha_AppInfo.appName.setter();
  }

  v14 = *MEMORY[0x277CD4498];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = specialized NSDictionary.arrayValue<A>(for:)();

  if (v15)
  {
    if (v15 >> 62)
    {
      v16 = __CocoaSet.count.getter();
      if (!v16)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_35;
      }
    }

    v17 = 0;
    v18 = *MEMORY[0x277CD4480];
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      v33 = v19;
      v20 = v17;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x223DDFF80](v20, v15);
        }

        else
        {
          if (v20 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v21 = *(v15 + 8 * v20 + 32);
        }

        v22 = v21;
        v17 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if ([v21 objectForKey_])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {

          v37 = 0u;
          v38 = 0u;
        }

        v39[0] = v37;
        v39[1] = v38;
        if (*(&v38 + 1))
        {
          break;
        }

        outlined destroy of MediaUserStateCenter?(v39, &_sypSgMd, &_sypSgMR);
LABEL_12:
        ++v20;
        if (v17 == v16)
        {
          goto LABEL_35;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_12;
      }

      v23 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      v27 = v23;
      if (v26 >= v25 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
      }

      *(v27 + 2) = v26 + 1;
      v19 = v27;
      v28 = &v27[16 * v26];
      *(v28 + 4) = v35;
      *(v28 + 5) = v36;
      if (v17 == v16)
      {
LABEL_35:

        Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
        break;
      }
    }
  }

  v29 = *MEMORY[0x277CD4490];
  v30._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31.value = NSDictionary.BOOLeanValue(for:)(v30).value;

  if (v31.value != 2)
  {
    return MEMORY[0x223DDB620](v31.value);
  }

  return result;
}

uint64_t closure #6 in AppInfoDataProvider.equivalentAppInfo(span:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v7[3] = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for LNMetadataProvider, 0x277D23C38);
  v7[4] = &protocol witness table for LNMetadataProvider;
  v7[0] = v5;
  AppIntentMetadataMapper.getAppIntentMetadata(bundleId:)(a2, a3);
  outlined destroy of AppIntentMetadataMapper(v7);
  return Apple_Parsec_Siri_V2alpha_AppInfo.appIntentsProtocolMetadata.setter();
}

uint64_t AppInfoDataProvider.getVocabularyConcepts(bundleId:allowPlaceholder:)(unint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v102 = type metadata accessor for Locale.Language();
  v101 = *(v102 - 8);
  v8 = *(v101 + 64);
  MEMORY[0x28223BE20](v102, v9);
  v100 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v103 = v97 - v14;
  v99 = type metadata accessor for Locale();
  v98 = *(v99 - 8);
  v15 = *(v98 + 64);
  MEMORY[0x28223BE20](v99, v16);
  v105 = v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v25 = v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
LABEL_50:
    v22 = swift_once();
  }

  v104 = v97;
  v26 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v22, v23);
  v93 = v4;
  v94 = a1;
  v95 = a2;
  LOBYTE(v96) = v5 & 1;
  Date.init()();
  v27 = *(*v26 + 200);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo12NSDictionaryCGMd, &_sSDySSSo12NSDictionaryCGMR);
  v95 = &v92;
  v96 = v28;
  LOBYTE(v93) = 2;
  v27(v118, 0xD00000000000003BLL, 0x80000002234DC740, 0, v25, "SiriInformationSearch/AppInfoDataProvider.swift", 47, 2, 155, "getVocabularyConcepts(bundleId:allowPlaceholder:)", 49, v93, partial apply for closure #1 in AppInfoDataProvider.getVocabularyConcepts(bundleId:allowPlaceholder:));
  (*(v19 + 1))(v25, v18);
  v18 = v118[0];
  v29 = [*(v4 + 56) languageCode];
  if (v29)
  {
    v97[1] = 0;
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v118[0] = v31;
    v118[1] = v33;
    v116 = 45;
    v117 = 0xE100000000000000;
    v114 = 95;
    v115 = 0xE100000000000000;
    v95 = lazy protocol witness table accessor for type String and conformance String();
    v96 = v95;
    v93 = MEMORY[0x277D837D0];
    v94 = v95;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v25 = v35;

    v36 = static Locale.canonicalLanguageIdentifier(from:)();
    v38 = v37;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    v40 = __swift_project_value_buffer(v39, static Logger.pommes);

    v104 = v40;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v118[0] = v44;
      *v43 = 136315394;
      *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v25, v118);
      *(v43 + 12) = 2080;
      *(v43 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v118);
      _os_log_impl(&dword_2232BB000, v41, v42, "PegasusProxy#equivalentAppInfo siriLocale: %s canonical: %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v44, -1, -1);
      MEMORY[0x223DE0F80](v43, -1, -1);
    }

    v45 = v103;
    v46 = v102;
    v47 = v101;
    v48 = v100;
    Locale.init(identifier:)();
    v107 = v36;
    v108 = v38;
    v109 = Locale.identifier.getter();
    v110 = v49;
    Locale.language.getter();
    Locale.Language.languageCode.getter();
    (*(v47 + 8))(v48, v46);
    v50 = type metadata accessor for Locale.LanguageCode();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v45, 1, v50) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v45, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
      v52 = 0;
      v53 = 0;
    }

    else
    {
      v52 = MEMORY[0x223DD91C0]();
      v53 = v58;
      (*(v51 + 8))(v45, v50);
    }

    v5 = v104;
    v4 = 0;
    a2 = v106;
    v111 = v52;
    v112 = v53;
    v113 = xmmword_2234D3D20;
    v59 = MEMORY[0x277D84F90];
    a1 = 4;
    v19 = v106;
LABEL_16:
    if (v4 <= 4)
    {
      v60 = 4;
    }

    else
    {
      v60 = v4;
    }

    v61 = v60 + 1;
    v62 = 16 * v4 + 40;
    while (v4 != 4)
    {
      if (v61 == ++v4)
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v63 = v62 + 16;
      v64 = *&v106[v62];
      v62 += 16;
      if (v64)
      {
        v65 = v5;
        v66 = *(&v103 + v63);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
        }

        v25 = *(v59 + 2);
        v67 = *(v59 + 3);
        if (v25 >= v67 >> 1)
        {
          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v25 + 1, 1, v59);
        }

        *(v59 + 2) = v25 + 1;
        v68 = &v59[16 * v25];
        *(v68 + 4) = v66;
        *(v68 + 5) = v64;
        v5 = v65;
        a2 = v106;
        goto LABEL_16;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayDestroy();
    v69 = *(v59 + 2);
    if (v69)
    {
      a2 = 0;
      v19 = v59 + 40;
      while (a2 < *(v59 + 2))
      {
        if (*(v18 + 16))
        {
          v4 = *(v19 - 1);
          a1 = *v19;

          v70 = specialized __RawDictionaryStorage.find<A>(_:)(v4, a1);
          if (v71)
          {
            v76 = v70;

            v77 = *(*(v18 + 56) + 8 * v76);

            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              v118[0] = v81;
              *v80 = 136315138;
              v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, a1, v118);

              *(v80 + 4) = v82;
              _os_log_impl(&dword_2232BB000, v78, v79, "PegasusProxy#equivalentAppInfo matched vocabulary for locale identifier: %s", v80, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v81);
              MEMORY[0x223DE0F80](v81, -1, -1);
              MEMORY[0x223DE0F80](v80, -1, -1);
            }

            else
            {
            }

            v83 = *MEMORY[0x277CD4488];
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v84 = specialized NSDictionary.arrayValue<A>(for:)();

            if (v84)
            {
              (*(v98 + 8))(v105, v99);

              return v84;
            }

            v85 = Logger.logObject.getter();
            v86 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              v118[0] = v88;
              *v87 = 136315138;
              v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, v118);

              *(v87 + 4) = v91;
              _os_log_impl(&dword_2232BB000, v85, v86, "PegasusProxy#equivalentAppInfo no policies found in vocabulary for key:%s", v87, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v88);
              MEMORY[0x223DE0F80](v88, -1, -1);
              MEMORY[0x223DE0F80](v87, -1, -1);
            }

            goto LABEL_38;
          }
        }

        a2 = (a2 + 1);
        v19 += 16;
        if (v69 == a2)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_49;
    }

LABEL_35:

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2232BB000, v72, v73, "PegasusProxy#equivalentAppInfo no vocabulary matches for any locale identifier", v74, 2u);
      MEMORY[0x223DE0F80](v74, -1, -1);
    }

LABEL_38:
    (*(v98 + 8))(v105, v99);
  }

  else
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.pommes);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2232BB000, v55, v56, "PegasusProxy#equivalentAppInfo unable get siriLocale", v57, 2u);
      MEMORY[0x223DE0F80](v57, -1, -1);
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t AppInfoDataProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t AppInfoDataProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance AppInfoDataProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 128))();
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of AppInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 128);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t partial apply for closure #1 in AppInfoDataProvider.getVocabularyConcepts(bundleId:allowPlaceholder:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  result = (*(v8 + 24))(v4, v5, v6, v7, v8);
  *a1 = result;
  return result;
}

double partial apply for closure #3 in AppInfoDataProvider.equivalentAppInfo(span:)@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  (*(v8 + 16))(v11, v4, v5, *v6, v7, v8);
  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v10;
  *(a1 + 32) = v12;
  return result;
}

unint64_t lazy protocol witness table accessor for type [NSDictionary] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [NSDictionary] and conformance [A];
  if (!lazy protocol witness table cache variable for type [NSDictionary] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo12NSDictionaryCGMd, &_sSaySo12NSDictionaryCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [NSDictionary] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Span.MatcherName and conformance Siri_Nlu_External_Span.MatcherName(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t key path setter for MarketplaceInfoDataProvider.marketplaceInfo : MarketplaceInfoDataProvider(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v10 - v7;
  outlined init with copy of Apple_Parsec_Search_V2_MarketplaceInfo?(a1, &v10 - v7);
  return (*(**a2 + 96))(v8);
}

uint64_t MarketplaceInfoDataProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v5 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  return v3;
}

uint64_t MarketplaceInfoDataProvider.init()()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v2 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t static MarketplaceInfoDataProvider.make()()
{
  v0 = type metadata accessor for MarketplaceInfoDataProvider();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v5 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v3);
}

uint64_t type metadata accessor for MarketplaceInfoDataProvider()
{
  result = type metadata singleton initialization cache for MarketplaceInfoDataProvider;
  if (!type metadata singleton initialization cache for MarketplaceInfoDataProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MarketplaceInfoDataProvider.prepare(dispatchQueue:)()
{
  v1 = v0;
  v58[4] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v54 = &v51[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMd, &_s10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v51[-v14];
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v51[-v18];
  v20 = *(*v0 + 88);
  v55 = *v0 + 88;
  v56 = v20;
  v20(v17);
  v21 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v19, 1, v21);
  outlined destroy of Apple_Parsec_Search_V2_MarketplaceInfo?(v19);
  if (v24 == 1)
  {
    v58[0] = 0;
    domain_answer = os_eligibility_get_domain_answer();
    if (domain_answer)
    {
      v26 = domain_answer;
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.pommes);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_18;
      }

      v30 = swift_slowAlloc();
      *v30 = 67109120;
      *(v30 + 1) = v26;
      v31 = "MarketplaceInfoDataProvider could not retrieve HYDROGEN domain eligibility information, assuming ineligible. EligibilityError: %d";
      v32 = v29;
      v33 = v28;
      v34 = v30;
      v35 = 8;
      goto LABEL_17;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    v53 = __swift_project_value_buffer(v36, static Logger.pommes);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v52 = v38;
      v40 = v39;
      *v39 = 134217984;
      swift_beginAccess();
      *(v40 + 1) = v58[0];
      _os_log_impl(&dword_2232BB000, v37, v52, "MarketplaceInfoDataProvider device eligibility: %llu", v40, 0xCu);
      MEMORY[0x223DE0F80](v40, -1, -1);
    }

    MEMORY[0x28223BE20](v41, v42);
    *&v51[-16] = v58;
    lazy protocol witness table accessor for type Apple_Parsec_Search_V2_MarketplaceInfo and conformance Apple_Parsec_Search_V2_MarketplaceInfo(&lazy protocol witness table cache variable for type Apple_Parsec_Search_V2_MarketplaceInfo and conformance Apple_Parsec_Search_V2_MarketplaceInfo, MEMORY[0x277D393F0]);
    v43 = v57;
    static Message.with(_:)();
    v57 = v43;
    (*(v22 + 56))(v15, 0, 1, v21);
    v44 = (*(*v1 + 96))(v15);
    v56(v44);
    if (v23(v11, 1, v21))
    {
      outlined destroy of Apple_Parsec_Search_V2_MarketplaceInfo?(v11);
LABEL_15:
      v28 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v28, v49))
      {
LABEL_18:

        goto LABEL_19;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "MarketplaceInfoDataProvider device ineligible";
      v32 = v49;
      v33 = v28;
      v34 = v30;
      v35 = 2;
LABEL_17:
      _os_log_impl(&dword_2232BB000, v33, v32, v31, v34, v35);
      MEMORY[0x223DE0F80](v30, -1, -1);
      goto LABEL_18;
    }

    v45 = Apple_Parsec_Search_V2_MarketplaceInfo.isMarketplaceEligible.getter();
    outlined destroy of Apple_Parsec_Search_V2_MarketplaceInfo?(v11);
    if ((v45 & 1) == 0)
    {
      goto LABEL_15;
    }

    v46 = type metadata accessor for TaskPriority();
    v47 = v54;
    (*(*(v46 - 8) + 56))(v54, 1, 1, v46);
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v48[4] = v1;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v47, &async function pointer to partial apply for closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:), v48);
  }

LABEL_19:
  v50 = *MEMORY[0x277D85DE8];
}

uint64_t closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Date();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:), 0, 0);
}

void closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)()
{
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pommes);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2232BB000, v2, v3, "MarketplaceInfoDataProvider fetching distributors", v4, 2u);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = v0[5];
  v6 = static PerformanceUtil.shared;
  Date.init()();
  v7 = *(*v6 + 208);
  v13 = v7 + *v7;
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[6] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  *v9 = v0;
  v9[1] = closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:);
  v10 = v0[5];
  v12 = v0[2];

  __asm { BRAA            X8, X16 }
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    MEMORY[0x2822009F8](closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:), 0, 0);
  }
}

uint64_t closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:), 0, 0);
}

uint64_t closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)()
{
  v1 = (*(**(v0 + 56) + 104))(v0 + 16);
  v3 = v2;
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  v4 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  *(v0 + 120) = v5;
  if (v5)
  {
    v1(v0 + 16, 0);
    v6 = *(v0 + 80);
    **(v0 + 48) = *(v0 + 120) != 0;

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(MEMORY[0x277CD5038] + 4);
    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:);

    return MEMORY[0x2821237B8]();
  }
}

{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 72);
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v23;
    v22 = v3;
    v5 = (v1 + 40);
    do
    {
      v6 = *(v0 + 80);
      v7 = *(v0 + 64);
      v9 = *(v5 - 1);
      v8 = *v5;
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = v8;
      lazy protocol witness table accessor for type Apple_Parsec_Search_V2_MarketplaceInfo and conformance Apple_Parsec_Search_V2_MarketplaceInfo(&lazy protocol witness table cache variable for type Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace and conformance Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace, MEMORY[0x277D393E0]);

      static Message.with(_:)();

      v12 = *(v23 + 16);
      v11 = *(v23 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v12 + 1, 1);
      }

      v13 = *(v0 + 80);
      v14 = *(v0 + 64);
      *(v23 + 16) = v12 + 1;
      (*(v22 + 32))(v23 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v12, v13, v14);
      v5 += 2;
      --v2;
    }

    while (v2);
    v15 = *(v0 + 112);
  }

  else
  {
    v16 = *(v0 + 112);

    v4 = MEMORY[0x277D84F90];
  }

  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  MEMORY[0x223DDA7F0](v4);
  v18(v0 + 16, 0);
  v19 = *(v0 + 80);
  **(v0 + 48) = *(v0 + 120) != 0;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:), 0, 0);
}

uint64_t MarketplaceInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2232BB000, v3, v4, "MarketplaceInfoDataProvider returning marketplace info", v5, 2u);
    MEMORY[0x223DE0F80](v5, -1, -1);
  }

  v6 = *(*v1 + 88);

  return v6();
}

uint64_t MarketplaceInfoDataProvider.__deallocating_deinit()
{
  outlined destroy of Apple_Parsec_Search_V2_MarketplaceInfo?(v0 + OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *v1;
  return Apple_Parsec_Search_V2_MarketplaceInfo.isMarketplaceEligible.setter();
}

uint64_t partial apply for closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(a1, v4, v5, v6);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned UInt64)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void type metadata completion function for MarketplaceInfoDataProvider()
{
  type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of MarketplaceInfoDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 136);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

void type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo?()
{
  if (!lazy cache variable for type metadata for Apple_Parsec_Search_V2_MarketplaceInfo?)
  {
    type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Parsec_Search_V2_MarketplaceInfo?);
    }
  }
}

uint64_t partial apply for closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)(a1, v1);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #2 in MarketplaceInfoDataProvider.prepare(dispatchQueue:)()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return MEMORY[0x223DDA7D0](v2, v1);
}

id PommesCacheInstrumentationUtil.mockStream.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t PommesCacheInstrumentationUtil.mockStream.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*PommesCacheInstrumentationUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PommesCacheInstrumentationUtil.mockStream.getter();
  return KnowledgeFallbackInstrumentationUtil.mockStream.modify;
}

uint64_t PommesCacheInstrumentationUtil.__allocating_init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t PommesCacheInstrumentationUtil.init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void PommesCacheInstrumentationUtil.logPommesCacheLookupStarted(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D59F00]) init];
    if (v7)
    {
      v17 = v7;
      v8 = [objc_allocWithZone(MEMORY[0x277D59F18]) init];
      if (v8)
      {
        v9 = v8;
        [v8 setExists_];
        [v17 setStartedOrChanged:v9];
        [v6 setCacheLookupContext:v17];
        v10 = [objc_opt_self() processInfo];
        v11 = NSProcessInfo.isRunningUnitTests.getter();

        if (v11)
        {
          v12 = (*(*v4 + 96))();
        }

        else
        {
          v12 = [objc_opt_self() sharedStream];
        }

        [v12 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v13 = v17;
    }

    else
    {
      v13 = v6;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);
  v17 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2232BB000, v17, v15, "Unable to log POMMES cache look up started event", v16, 2u);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

LABEL_15:
}

void PommesCacheInstrumentationUtil.logPommesCacheLookupEnded(requestId:pommesCandidateId:status:resultDomain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D59F00]) init];
    if (v13)
    {
      v24 = v13;
      v14 = [objc_allocWithZone(MEMORY[0x277D59F08]) init];
      if (v14)
      {
        v15 = v14;
        [v14 setStatus_];
        if (a6)
        {
          v16 = MEMORY[0x223DDF550](a5, a6);
        }

        else
        {
          v16 = 0;
        }

        [v15 setResultDomain_];

        [v24 setEnded:v15];
        [v12 setCacheLookupContext:v24];
        v21 = [objc_opt_self() processInfo];
        v22 = NSProcessInfo.isRunningUnitTests.getter();

        if (v22)
        {
          v23 = (*(*v7 + 96))();
        }

        else
        {
          v23 = [objc_opt_self() sharedStream];
        }

        [v23 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_18;
      }

      v17 = v24;
    }

    else
    {
      v17 = v12;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.pommes);
  v24 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2232BB000, v24, v19, "Unable to log POMMES cache look up ended event", v20, 2u);
    MEMORY[0x223DE0F80](v20, -1, -1);
  }

LABEL_18:
}

void PommesCacheInstrumentationUtil.logPommesCacheStoringStarted(requestId:pommesCandidateId:resultDomain:resultSizeInBytes:timeToLiveInSeconds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v13 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277D59F40]) init];
    if (v15)
    {
      v26 = v15;
      v16 = [objc_allocWithZone(MEMORY[0x277D59F58]) init];
      if (v16)
      {
        v17 = v16;
        v18 = MEMORY[0x223DDF550](a4, a5);
        [v17 setResultDomain_];

        [v17 setResultSizeInBytes_];
        [v17 setTimeToLiveInSeconds_];
        [v26 setStartedOrChanged:v17];
        [v14 setCacheStoringContext:v26];
        v19 = [objc_opt_self() processInfo];
        v20 = NSProcessInfo.isRunningUnitTests.getter();

        if (v20)
        {
          v21 = (*(*v8 + 96))();
        }

        else
        {
          v21 = [objc_opt_self() sharedStream];
        }

        [v21 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v22 = v26;
    }

    else
    {
      v22 = v14;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.pommes);
  v26 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2232BB000, v26, v24, "Unable to log POMMES cache storing started event", v25, 2u);
    MEMORY[0x223DE0F80](v25, -1, -1);
  }

LABEL_15:
}

void PommesCacheInstrumentationUtil.logPommesCacheStoringEnded(requestId:pommesCandidateId:status:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D59F40]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D59F48]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setStatus_];
        [v19 setEnded:v11];
        [v8 setCacheStoringContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log POMMES cache storing ended event", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

void PommesCacheInstrumentationUtil.logPommesCacheInvalidationStarted(requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D59EE0]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D59EF8]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setReason_];
        [v19 setStartedOrChanged:v11];
        [v8 setCacheInvalidationContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log POMMES cache invalidation started event", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

void PommesCacheInstrumentationUtil.logPommesCacheLookupFailed(requestId:pommesCandidateId:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5, Class *a6, SEL *a7, const char *a8)
{
  v13 = v8;
  v15 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v15)
  {
    v16 = v15;
    v17 = [objc_allocWithZone(*a5) init];
    if (v17)
    {
      v27 = v17;
      v18 = [objc_allocWithZone(*a6) init];
      if (v18)
      {
        v19 = v18;
        [v18 setReason_];
        [v27 setFailed:v19];
        [v16 *a7];
        v20 = [objc_opt_self() processInfo];
        v21 = NSProcessInfo.isRunningUnitTests.getter();

        if (v21)
        {
          v22 = (*(*v13 + 96))();
        }

        else
        {
          v22 = [objc_opt_self() sharedStream];
        }

        [v22 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v23 = v27;
    }

    else
    {
      v23 = v16;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.pommes);
  v27 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2232BB000, v27, v25, a8, v26, 2u);
    MEMORY[0x223DE0F80](v26, -1, -1);
  }

LABEL_15:
}

void PommesCacheInstrumentationUtil.logPommesCacheInvalidationEnded(requestId:pommesCandidateId:numberOfCacheKeysInvalidated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D59EE0]) init];
    if (v9)
    {
      v19 = v9;
      v10 = [objc_allocWithZone(MEMORY[0x277D59EE8]) init];
      if (v10)
      {
        v11 = v10;
        [v10 setNumberOfCacheKeysInvalidated_];
        [v19 setEnded:v11];
        [v8 setCacheInvalidationContext:v19];
        v12 = [objc_opt_self() processInfo];
        v13 = NSProcessInfo.isRunningUnitTests.getter();

        if (v13)
        {
          v14 = (*(*v5 + 96))();
        }

        else
        {
          v14 = [objc_opt_self() sharedStream];
        }

        [v14 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v15 = v19;
    }

    else
    {
      v15 = v8;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v19, v17, "Unable to log POMMES cache invalidation ended event", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

LABEL_15:
}

uint64_t PommesCacheInstrumentationUtil.logPommesCacheMaintenanceStarted(secondsSinceLastMaintenanceStarted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for PommesCandidateId();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(0, 0, v8);
  outlined destroy of PommesCandidateId?(v8);
  if (v10)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D59F20]) init];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_allocWithZone(MEMORY[0x277D59F38]) init];
      if (v13)
      {
        v14 = v13;
        if ((a1 & 0x100000000) == 0)
        {
          [v13 setTimeSinceLastMaintenanceInSeconds_];
        }

        [v12 setStartedOrChanged:v14];
        [v10 setCacheMaintenanceContext:v12];
        UUID.init()();
        PommesCacheInstrumentationUtil.emitFromIsolatedStream(message:uuid:)(v10);

        v15 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v12 = v10;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.pommes);
  v12 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2232BB000, v12, v17, "Unable to log POMMESCacheMaintenanceStarted event", v18, 2u);
    MEMORY[0x223DE0F80](v18, -1, -1);
  }

  v15 = 1;
LABEL_15:

  v19 = type metadata accessor for UUID();
  return (*(*(v19 - 8) + 56))(a2, v15, 1, v19);
}

void PommesCacheInstrumentationUtil.logPommesCacheMaintenanceEnded(isolatedStreamUUID:numberOfCacheEntriesUpdated:totalCacheEntries:secondsSinceMaintenanceStarted:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for PommesCandidateId();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(0, 0, v13);
  outlined destroy of PommesCandidateId?(v13);
  if (v15)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D59F20]) init];
    if (v16)
    {
      v17 = v16;
      v18 = [objc_allocWithZone(MEMORY[0x277D59F28]) init];
      if (v18)
      {
        v19 = v18;
        [v18 setNumberOfEntriesUpdated:a2];
        [v19 setTotalCacheEntries:a3];
        [v19 setTimeSinceMaintenanceStartedInSeconds:a4];
        [v19 setReason:a5];
        [v17 setEnded_];
        [v15 setCacheMaintenanceContext_];
        PommesCacheInstrumentationUtil.emitFromIsolatedStream(message:uuid:)(v15);

        goto LABEL_12;
      }
    }

    else
    {
      v17 = v15;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.pommes);
  v19 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2232BB000, v19, v21, "Unable to log POMMESCacheMaintenanceEnded event", v22, 2u);
    MEMORY[0x223DE0F80](v22, -1, -1);
  }

LABEL_12:
}

void PommesCacheInstrumentationUtil.logPommesCacheMaintenanceFailed(isolatedStreamUUID:reason:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for PommesCandidateId();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(0, 0, v7);
  outlined destroy of PommesCandidateId?(v7);
  if (v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D59F20]) init];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_allocWithZone(MEMORY[0x277D59F30]) init];
      if (v12)
      {
        v13 = v12;
        [v12 setReason:a2];
        [v11 setFailed_];
        [v9 setCacheMaintenanceContext_];
        PommesCacheInstrumentationUtil.emitFromIsolatedStream(message:uuid:)(v9);

        goto LABEL_12;
      }
    }

    else
    {
      v11 = v9;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);
  v13 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2232BB000, v13, v15, "Unable to log POMMESCacheMaintenanceFailed event", v16, 2u);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

LABEL_12:
}

void PommesCacheInstrumentationUtil.emitFromIsolatedStream(message:uuid:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 processInfo];
  v6 = NSProcessInfo.isRunningUnitTests.getter();

  if (v6)
  {
    oslog = (*(*v2 + 96))();
    (*((*MEMORY[0x277D85000] & oslog->isa) + 0x78))(a1);
  }

  else
  {
    v7 = [v4 processInfo];
    v8 = NSProcessInfo.isRunningUnitTests.getter();

    if (v8)
    {
      (*(*v2 + 96))();
    }

    else
    {
      v9 = [objc_opt_self() sharedStream];
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      oslog = UUID._bridgeToObjectiveC()().super.isa;
      [v11 emitMessage:a1 isolatedStreamUUID:?];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Logger.pommes);
      oslog = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2232BB000, oslog, v13, "PegasusCacheManager : Default stream is not an instance of SiriAnalyticsClientMessageStream", v14, 2u);
        MEMORY[0x223DE0F80](v14, -1, -1);
      }
    }
  }
}

uint64_t PommesCacheInstrumentationUtil.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PommesCacheInstrumentationUtil.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of PommesCandidateId?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Collection<>.merge<A>(with:by:isAscending:)(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v64 = a6;
  v63 = a3;
  v69 = a1;
  v62 = a2;
  v61 = *(*a2 + *MEMORY[0x277D84DE8] + 8);
  v10 = *(v61 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1, a2);
  v60 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v67 = &v53 - v16;
  v18 = *v17;
  v19 = *(*v17 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v15, v21);
  v59 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v53 - v25;
  v27 = 0;
  v28 = 0;
  v72 = Array.init()();
  v29 = (v19 + 16);
  v57 = (v10 + 8);
  v58 = (v19 + 8);
  v65 = a4;
  v66 = (v19 + 16);
  v55 = a5;
  v56 = v26;
LABEL_3:
  for (i = v27; ; v27 = i)
  {
    while (1)
    {
      if (v28 >= dispatch thunk of Collection.count.getter() && v27 >= MEMORY[0x223DDF8C0](v69, v18))
      {
        return v72;
      }

      if (v28 == dispatch thunk of Collection.count.getter())
      {
        Array.subscript.getter();
        type metadata accessor for Array();
        result = Array.append(_:)();
        v31 = __OFADD__(v27++, 1);
        if (!v31)
        {
          goto LABEL_3;
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v27 != MEMORY[0x223DDF8C0](v69, v18))
      {
        break;
      }

      v71 = v28;
      v32 = dispatch thunk of Collection.subscript.read();
      (*v29)(v26);
      v32(v70, 0);
      type metadata accessor for Array();
      result = Array.append(_:)();
      v31 = __OFADD__(v28++, 1);
      if (v31)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    if (v63)
    {
      break;
    }

    v71 = v28;
    v43 = dispatch thunk of Collection.subscript.read();
    v54 = *v29;
    v54(v26);
    v43(v70, 0);
    swift_getAtKeyPath();
    v44 = *v58;
    (*v58)(v26, v18);
    v45 = v59;
    Array.subscript.getter();
    v36 = v7;
    v46 = v60;
    swift_getAtKeyPath();
    v44(v45, v18);
    v47 = v67;
    v48 = v61;
    LOBYTE(v44) = dispatch thunk of static Comparable.< infix(_:_:)();
    v49 = *v57;
    (*v57)(v46, v48);
    v49(v47, v48);
    if (v44)
    {
      v7 = v36;
      v26 = v56;
      v52 = i;
      Array.subscript.getter();
      type metadata accessor for Array();
      result = Array.append(_:)();
      v31 = __OFADD__(v52, 1);
      v27 = v52 + 1;
      if (!v31)
      {
LABEL_21:
        v29 = v66;
        goto LABEL_3;
      }

      goto LABEL_27;
    }

    v71 = v28;
    v50 = dispatch thunk of Collection.subscript.read();
    v26 = v56;
    v54(v56);
    v50(v70, 0);
    type metadata accessor for Array();
    result = Array.append(_:)();
    v31 = __OFADD__(v28++, 1);
    if (v31)
    {
      goto LABEL_24;
    }

LABEL_16:
    v7 = v36;
    v29 = v66;
  }

  v71 = v28;
  v33 = dispatch thunk of Collection.subscript.read();
  v53 = *v29;
  v53(v26);
  v33(v70, 0);
  swift_getAtKeyPath();
  v34 = *v58;
  (*v58)(v26, v18);
  v35 = v59;
  Array.subscript.getter();
  v36 = v7;
  v37 = v60;
  swift_getAtKeyPath();
  v34(v35, v18);
  v38 = v67;
  v39 = v61;
  LODWORD(v54) = dispatch thunk of static Comparable.< infix(_:_:)();
  v40 = *v57;
  (*v57)(v37, v39);
  v40(v38, v39);
  if (v54)
  {
    v71 = v28;
    v41 = dispatch thunk of Collection.subscript.read();
    v42 = v56;
    v53(v56);
    v41(v70, 0);
    type metadata accessor for Array();
    v26 = v42;
    result = Array.append(_:)();
    v31 = __OFADD__(v28++, 1);
    if (v31)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v7 = v36;
  v26 = v56;
  v51 = i;
  Array.subscript.getter();
  type metadata accessor for Array();
  result = Array.append(_:)();
  v31 = __OFADD__(v51, 1);
  v27 = v51 + 1;
  if (!v31)
  {
    goto LABEL_21;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t PommesRequestContext.__allocating_init(assistantId:sessionId:requestId:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isPushOffRequest:isTriggerlessFollowup:bargeInModes:approximatePreviousTTSInterval:deviceRestrictions:isRelatedQuestion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v27 = *(v20 + 48);
  v28 = *(v20 + 52);
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v30 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v31 = type metadata accessor for UUID();
  (*(*(v31 - 8) + 32))(v29 + v30, a3, v31);
  v32 = (v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v32 = a4;
  v32[1] = a5;
  v33 = (v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v33 = a6;
  v33[1] = a7;
  v34 = (v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v34 = a8;
  v34[1] = a9;
  v35 = (v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v35 = a10;
  v35[1] = a11;
  *(v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = a12;
  *(v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = a13;
  *(v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = a14;
  *(v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = a15;
  *(v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = a16;
  *(v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = a17;
  outlined init with take of DateInterval?(a18, v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
  *(v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = a19;
  *(v29 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = a20;
  return v29;
}

unint64_t PommesRequestContext.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6E61747369737361;
  switch(a1)
  {
    case 1:
      result = 0x496E6F6973736573;
      break;
    case 2:
      result = 0x4974736575716572;
      break;
    case 3:
      result = 0x756F536F69647561;
      break;
    case 4:
    case 10:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65736E6F70736572;
      break;
    case 6:
      result = 0x7246736579457369;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x4D6E496567726162;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesRequestContext.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PommesRequestContext.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesRequestContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesRequestContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PommesRequestContext.assistantId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PommesRequestContext.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PommesRequestContext.requestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);

  return v1;
}

uint64_t PommesRequestContext.audioSource.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource + 8);

  return v1;
}

uint64_t PommesRequestContext.audioDestination.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination + 8);

  return v1;
}

uint64_t PommesRequestContext.responseMode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode + 8);

  return v1;
}

uint64_t PommesRequestContext.__allocating_init(assistantId:sessionId:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v30 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v29 - v21;
  v23 = v14[2];
  v23(&v29 - v21, a3, v13);
  v23(v19, v22, v13);
  v24 = type metadata accessor for DateInterval();
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  BYTE4(v28) = 0;
  LODWORD(v28) = 0;
  v25 = (*(v5 + 216))(a1, v30, v19, v31, v32, 0, 0, 0, 0, 0, 0, v28, MEMORY[0x277D84F90], v12, MEMORY[0x277D84F90], 0);
  v26 = v14[1];
  v26(a3, v13);
  v26(v22, v13);
  return v25;
}

uint64_t PommesRequestContext.__allocating_init(assistantId:sessionId:requestId:deviceRestrictions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v27 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, a3, v17);
  v23 = type metadata accessor for DateInterval();
  (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
  BYTE4(v26) = 0;
  LODWORD(v26) = 0;
  v24 = (*(v6 + 216))(a1, a2, v22, a4, v28, 0, 0, 0, 0, 0, 0, v26, MEMORY[0x277D84F90], v16, a6, 0);
  (*(v18 + 8))(a3, v17);
  return v24;
}

uint64_t PommesRequestContext.__allocating_init(assistantId:sessionId:requestId:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:bargeInModes:approximatePreviousTTSInterval:deviceRestrictions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v25 = *(v18 + 48);
  v26 = *(v18 + 52);
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  v28 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v29 = type metadata accessor for UUID();
  (*(*(v29 - 8) + 32))(v27 + v28, a3, v29);
  v30 = (v27 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v30 = a4;
  v30[1] = a5;
  v31 = (v27 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v31 = a6;
  v31[1] = a7;
  v32 = (v27 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v32 = a8;
  v32[1] = a9;
  v33 = (v27 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v33 = a10;
  v33[1] = a11;
  *(v27 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = a12;
  *(v27 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = a13;
  *(v27 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = a14;
  *(v27 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
  *(v27 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = a15;
  *(v27 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = a16;
  outlined init with take of DateInterval?(a17, v27 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
  *(v27 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = a18;
  *(v27 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
  return v27;
}

uint64_t PommesRequestContext.init(assistantId:sessionId:requestId:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:bargeInModes:approximatePreviousTTSInterval:deviceRestrictions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v24 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 32))(v18 + v24, a3, v25);
  v26 = (v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v26 = a4;
  v26[1] = a5;
  v27 = (v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v27 = a6;
  v27[1] = a7;
  v28 = (v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v28 = a8;
  v28[1] = a9;
  v29 = (v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v29 = a10;
  v29[1] = a11;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = a12;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = a13;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = a14;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = 0;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = a15;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = a16;
  outlined init with take of DateInterval?(a17, v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = a18;
  *(v18 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
  return v18;
}

uint64_t PommesRequestContext.__allocating_init(assistantId:sessionId:requestId:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isPushOffRequest:isTriggerlessFollowup:bargeInModes:approximatePreviousTTSInterval:deviceRestrictions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v26 = *(v19 + 48);
  v27 = *(v19 + 52);
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  v29 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v30 = type metadata accessor for UUID();
  (*(*(v30 - 8) + 32))(v28 + v29, a3, v30);
  v31 = (v28 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v31 = a4;
  v31[1] = a5;
  v32 = (v28 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v32 = a6;
  v32[1] = a7;
  v33 = (v28 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v33 = a8;
  v33[1] = a9;
  v34 = (v28 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v34 = a10;
  v34[1] = a11;
  *(v28 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = a12;
  *(v28 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = a13;
  *(v28 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = a14;
  *(v28 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = a15;
  *(v28 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = a16;
  *(v28 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = a17;
  outlined init with take of DateInterval?(a18, v28 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
  *(v28 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = a19;
  *(v28 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
  return v28;
}

uint64_t PommesRequestContext.init(assistantId:sessionId:requestId:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isPushOffRequest:isTriggerlessFollowup:bargeInModes:approximatePreviousTTSInterval:deviceRestrictions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v24 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 32))(v19 + v24, a3, v25);
  v26 = (v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v26 = a4;
  v26[1] = a5;
  v27 = (v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v27 = a6;
  v27[1] = a7;
  v28 = (v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v28 = a8;
  v28[1] = a9;
  v29 = (v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v29 = a10;
  v29[1] = a11;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = a12;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = a13;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = a14;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = a15;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = a16;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = a17;
  outlined init with take of DateInterval?(a18, v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = a19;
  *(v19 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = 0;
  return v19;
}

uint64_t PommesRequestContext.init(assistantId:sessionId:requestId:audioSource:audioDestination:responseMode:isEyesFree:isVoiceTriggerEnabled:isTextToSpeechEnabled:isPushOffRequest:isTriggerlessFollowup:bargeInModes:approximatePreviousTTSInterval:deviceRestrictions:isRelatedQuestion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v25 = OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId;
  v26 = type metadata accessor for UUID();
  (*(*(v26 - 8) + 32))(v20 + v25, a3, v26);
  v27 = (v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *v27 = a4;
  v27[1] = a5;
  v28 = (v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  *v28 = a6;
  v28[1] = a7;
  v29 = (v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  *v29 = a8;
  v29[1] = a9;
  v30 = (v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  *v30 = a10;
  v30[1] = a11;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = a12;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = a13;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = a14;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = a15;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = a16;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = a17;
  outlined init with take of DateInterval?(a18, v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = a19;
  *(v20 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = a20;
  return v20;
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PommesRequestContext.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PommesRequestContext.init(from:)(a1);
  return v5;
}

uint64_t PommesRequestContext.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v42 - v6;
  v8 = type metadata accessor for UUID();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch20PommesRequestContextC10CodingKeys33_09A10A05CFAC1F0166D657DF6BDCBBDBLLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch20PommesRequestContextC10CodingKeys33_09A10A05CFAC1F0166D657DF6BDCBBDBLLOGMR);
  v13 = *(v46 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v46, v15);
  v17 = &v42 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys();
  v45 = v17;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v20 = v48;
    type metadata accessor for PommesRequestContext();
    v38 = *(*v20 + 48);
    v39 = *(*v20 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v13;
    v43 = v8;
    LOBYTE(v50) = 0;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = v48;
    *(v48 + 16) = v22;
    *(v23 + 24) = v24;
    LOBYTE(v50) = 1;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v25 = v43;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v44 + 32))(v23 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_sessionId, v12, v25);
    LOBYTE(v50) = 2;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = (v23 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v50) = 3;
    v42 = 0;
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v30 = (v23 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v50) = 4;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = (v23 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
    *v33 = v32;
    v33[1] = v34;
    LOBYTE(v50) = 5;
    v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = (v23 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
    *v36 = v35;
    v36[1] = v37;
    LOBYTE(v50) = 6;
    *(v23 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v50) = 7;
    *(v23 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v50) = 8;
    *(v23 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v50) = 9;
    *(v48 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v50) = 10;
    *(v48 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v49 = 11;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v48 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes) = v50;
    type metadata accessor for DateInterval();
    LOBYTE(v50) = 12;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of DateInterval?(v7, v48 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval);
    v49 = 13;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v48 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions) = v50;
    LOBYTE(v50) = 14;
    v41 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v21 + 8))(v45, v46);
    v20 = v48;
    *(v48 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion) = v41 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  return v20;
}

unint64_t lazy protocol witness table accessor for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys);
  }

  return result;
}

uint64_t PommesRequestContext.__allocating_init(requestContextMessage:)(void *a1)
{
  v2 = specialized PommesRequestContext.__allocating_init(requestContextMessage:)(a1);

  return v2;
}

uint64_t PommesRequestContext.__allocating_init(requestContextData:assistantId:sessionId:requestId:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a4;
  v46 = a5;
  v47 = a6;
  v6 = a4;
  v44 = a2;
  v45 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v33[-v11];
  v41 = type metadata accessor for UUID();
  v13 = *(v41 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v41, v15);
  v17 = &v33[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v17, v6);
  v18 = RequestContextData.audioSource.getter();
  v39 = v19;
  v40 = v18;
  v20 = RequestContextData.audioDestination.getter();
  v37 = v21;
  v38 = v20;
  v22 = RequestContextData.responseMode.getter();
  v35 = v23;
  v36 = v22;
  v34 = RequestContextData.isEyesFree.getter();
  v24 = RequestContextData.isVoiceTriggerEnabled.getter();
  LOBYTE(v6) = RequestContextData.isTextToSpeechEnabled.getter();
  v25 = RequestContextData.isTriggerlessFollowup.getter();
  v26 = RequestContextData.bargeInModes.getter();
  RequestContextData.approximatePreviousTTSInterval.getter();
  v27 = RequestContextData.deviceRestrictions.getter();
  v28 = RequestContextData.suggestionRequestType.getter() == 1;
  BYTE4(v32) = v25 & 1;
  BYTE3(v32) = 0;
  BYTE2(v32) = v6 & 1;
  BYTE1(v32) = v24 & 1;
  LOBYTE(v32) = v34 & 1;
  v30 = (*(v43 + 216))(v44, v45, v17, v46, v47, v40, v39, v38, v37, v36, v35, v32, v26, v12, v27, v28 & ~v29);

  (*(v13 + 8))(v42, v41);
  return v30;
}

uint64_t PommesRequestContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch20PommesRequestContextC10CodingKeys33_09A10A05CFAC1F0166D657DF6BDCBBDBLLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch20PommesRequestContextC10CodingKeys33_09A10A05CFAC1F0166D657DF6BDCBBDBLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v29 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PommesRequestContext.CodingKeys and conformance PommesRequestContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  LOBYTE(v31) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v31) = 1;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
    v15 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
    LOBYTE(v31) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
    v17 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource + 8);
    LOBYTE(v31) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
    v19 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination + 8);
    LOBYTE(v31) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
    v21 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode + 8);
    LOBYTE(v31) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree);
    LOBYTE(v31) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled);
    LOBYTE(v31) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled);
    LOBYTE(v31) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup);
    LOBYTE(v31) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest);
    LOBYTE(v31) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v31 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes);
    v30 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v31) = 12;
    type metadata accessor for DateInterval();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions);
    v30 = 13;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isRelatedQuestion);
    LOBYTE(v31) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t PommesRequestContext.responseModeInteractionType()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v50 - v6;
  v8 = type metadata accessor for ResponseMode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v50 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v50 - v24;
  v26 = v1 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode;
  v27 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  v28 = *(v26 + 8);

  ResponseMode.init(aceValue:)();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v7, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
LABEL_3:
    v29 = type metadata accessor for InteractionType();
    return (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
  }

  v52 = a1;
  (*(v9 + 32))(v25, v7, v8);
  v51 = *(v9 + 16);
  v51(v22, v25, v8);
  static ResponseMode.voiceOnly.getter();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, MEMORY[0x277D61CC8]);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v9 + 8);
  v32(v18, v8);
  if (v31 & 1) != 0 || (static ResponseMode.voiceForward.getter(), v33 = dispatch thunk of static Equatable.== infix(_:_:)(), v32(v18, v8), (v33))
  {
    v32(v22, v8);
    v32(v25, v8);
    v34 = MEMORY[0x277D61D90];
  }

  else
  {
    static ResponseMode.displayForward.getter();
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32(v18, v8);
    if (v39)
    {
      v32(v22, v8);
    }

    else
    {
      static ResponseMode.displayOnly.getter();
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32(v18, v8);
      v32(v22, v8);
      if ((v40 & 1) == 0)
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        __swift_project_value_buffer(v41, static Logger.pommes);
        v51(v14, v25, v8);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v53 = v51;
          *v44 = 136315138;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, MEMORY[0x277D61CC8]);
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v47 = v46;
          v32(v14, v8);
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v53);

          *(v44 + 4) = v48;
          _os_log_impl(&dword_2232BB000, v42, v43, "Unknown (future?) response mode value: %s", v44, 0xCu);
          v49 = v51;
          __swift_destroy_boxed_opaque_existential_1(v51);
          MEMORY[0x223DE0F80](v49, -1, -1);
          MEMORY[0x223DE0F80](v44, -1, -1);
        }

        else
        {

          v32(v14, v8);
        }

        v32(v25, v8);
        a1 = v52;
        goto LABEL_3;
      }
    }

    v32(v25, v8);
    v34 = MEMORY[0x277D61D98];
  }

  v35 = *v34;
  v36 = type metadata accessor for InteractionType();
  v37 = *(v36 - 8);
  v38 = v52;
  (*(v37 + 104))(v52, v35, v36);
  return (*(v37 + 56))(v38, 0, 1, v36);
}

uint64_t PommesRequestContext.mappedInteractionType(inputOrigin:previousInteractionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v69 = a2;
  v63 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v60 = v57 - v7;
  v8 = type metadata accessor for InputOrigin();
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v62 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InteractionTypeHelper();
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v70 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = v57 - v25;
  v27 = type metadata accessor for DeviceRestrictions();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v34);
  v36 = v57 - v35;
  v37 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions);

  DeviceRestrictions.init(aceValue:)();
  static DeviceRestrictions.starkMode.getter();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions, MEMORY[0x277D61DC0]);
  v57[1] = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v38 = *(v28 + 8);
  v38(v33, v27);
  static DeviceRestrictions.carDNDMode.getter();
  v57[0] = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v38(v33, v27);
  v39 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  v40 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource + 8);

  v61 = v26;
  AudioSource.init(aceValue:)();
  v65 = v3;
  v41 = v58;
  v42 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  v43 = *(v3 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination + 8);

  v64 = v21;
  AudioDestination.init(aceValue:)();
  static InteractionTypeHelper.shared.getter();
  v44 = v60;
  outlined init with copy of MediaUserStateCenter?(v63, v60, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v45 = v59;
  v46 = *(v59 + 48);
  v47 = v44;
  if (v46(v44, 1, v41) == 1)
  {
    v48 = v62;
    (*(v45 + 104))(v62, *MEMORY[0x277D61C50], v41);
    v49 = v46(v47, 1, v41);
    v50 = v48;
    v51 = v45;
    if (v49 != 1)
    {
      outlined destroy of MediaUserStateCenter?(v47, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    }
  }

  else
  {
    v50 = v62;
    (*(v45 + 32))(v62, v44, v41);
    v51 = v45;
  }

  v52 = v64;
  v53 = *(v65 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree);
  v54 = v61;
  v55 = v70;
  InteractionTypeHelper.mapInteractionType(inputOrigin:isEyesFree:isDeviceInStarkMode:isDeviceInCarDND:audioSource:audioDestination:previousInteractionType:)();
  (*(v51 + 8))(v50, v41);
  (*(v66 + 8))(v55, v67);
  outlined destroy of MediaUserStateCenter?(v52, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of MediaUserStateCenter?(v54, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  return (v38)(v36, v27);
}

uint64_t PommesRequestContext.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29 - v5;
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(302);
  MEMORY[0x223DDF6D0](0x6E61747369737361, 0xEE0022203A644974);
  MEMORY[0x223DDF6D0](*(v1 + 16), *(v1 + 24));
  MEMORY[0x223DDF6D0](0x6973736573202C22, 0xEE00203A64496E6FLL);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DDF6D0](v7);

  MEMORY[0x223DDF6D0](0x736575716572202CLL, 0xED0000203A644974);
  MEMORY[0x223DDF6D0](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8));
  MEMORY[0x223DDF6D0](0x536F69647561202CLL, 0xEF203A656372756FLL);
  v8 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource + 8);
  v29 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioSource);
  v30 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v9 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v9);

  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DC960);
  v10 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination + 8);
  v29 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_audioDestination);
  v30 = v10;

  v11 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v11);

  MEMORY[0x223DDF6D0](0xD000000000000012, 0x80000002234DC980);
  v12 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode + 8);
  v29 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_responseMode);
  v30 = v12;

  v13 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v13);

  MEMORY[0x223DDF6D0](0x6579457369202C22, 0xEF203A6565724673);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isEyesFree))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v14, v15);

  MEMORY[0x223DDF6D0](0xD000000000000019, 0x80000002234DC9A0);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled))
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isVoiceTriggerEnabled))
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v16, v17);

  MEMORY[0x223DDF6D0](0xD000000000000019, 0x80000002234DC9C0);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTextToSpeechEnabled))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v18, v19);

  MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234DC9E0);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isTriggerlessFollowup))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v20, v21);

  MEMORY[0x223DDF6D0](0xD000000000000013, 0x80000002234DCA00);
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_isPushOffRequest))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v22, v23);

  MEMORY[0x223DDF6D0](0x6E4965677261620ALL, 0xEF203A7365646F4DLL);
  v24 = MEMORY[0x277D837D0];
  v25 = MEMORY[0x223DDF850](*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_bargeInModes), MEMORY[0x277D837D0]);
  MEMORY[0x223DDF6D0](v25);

  MEMORY[0x223DDF6D0](0xD000000000000022, 0x80000002234DCA20);
  outlined init with copy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_approximatePreviousTTSInterval, v6, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v26 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v26);

  MEMORY[0x223DDF6D0](0xD000000000000016, 0x80000002234DCA50);
  v27 = MEMORY[0x223DDF850](*(v0 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_deviceRestrictions), v24);
  MEMORY[0x223DDF6D0](v27);

  return v31;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PommesRequestContext@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 224))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t specialized PommesRequestContext.__allocating_init(requestContextMessage:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v34 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MessageBase.assistantId.getter();
  v41 = v13;
  v42 = v12;
  v14 = a1;
  SessionMessageBase.sessionId.getter();

  v15 = v14;
  v16 = RequestMessageBase.requestId.getter();
  v39 = v17;
  v40 = v16;

  v18 = RequestContextMessage.audioSource.getter();
  v37 = v19;
  v38 = v18;
  v20 = RequestContextMessage.audioDestination.getter();
  v35 = v21;
  v36 = v20;
  v22 = RequestContextMessage.responseMode.getter();
  v24 = v23;
  v25 = RequestContextMessage.isEyesFree.getter();
  v26 = RequestContextMessage.isVoiceTriggerEnabled.getter();
  v27 = RequestContextMessage.isTextToSpeechEnabled.getter();
  v28 = RequestContextMessage.isTriggerlessFollowup.getter();
  v29 = RequestContextMessage.bargeInModes.getter();
  RequestContextMessage.approximatePreviousTTSInterval.getter();
  v30 = RequestContextMessage.deviceRestrictions.getter();
  v33 = 0;
  BYTE4(v32) = v28 & 1;
  BYTE3(v32) = 0;
  BYTE2(v32) = v27 & 1;
  BYTE1(v32) = v26 & 1;
  LOBYTE(v32) = v25 & 1;
  return (*(v43 + 216))(v42, v41, v11, v40, v39, v38, v37, v36, v35, v22, v24, v32, v29, v6, v30, v33);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for PommesRequestContext()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for DateInterval?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for DateInterval?()
{
  if (!lazy cache variable for type metadata for DateInterval?)
  {
    type metadata accessor for DateInterval();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DateInterval?);
    }
  }
}

uint64_t specialized PommesRequestContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61747369737361 && a2 == 0xEB00000000644974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F536F69647561 && a2 == 0xEB00000000656372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002234DCAD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7246736579457369 && a2 == 0xEA00000000006565 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002234DCAF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002234DCB10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002234DCB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002234DCB50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4D6E496567726162 && a2 == 0xEC0000007365646FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000002234DCB70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002234DCB90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002234DCBB0 == a2)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t PommesSearchRequest.hadPreviousClassicTurn.getter()
{
  v1 = type metadata accessor for PommesSearchRequest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v93 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v5 = *(*(v87 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v87, v6);
  v86 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v89 = &v85 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v92 = &v85 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v88 = &v85 - v17;
  v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v19 = *(v18 - 8);
  v90 = v18;
  v91 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v85 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PommesContext.Source();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v33 = &v85 - v32;
  v34 = type metadata accessor for PommesContext();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v1;
  v41 = v40;
  v43 = v42;
  outlined init with copy of MediaUserStateCenter?(v0 + *(v1 + 40), v33, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  if ((*(v43 + 48))(v33, 1, v41) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v33, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    v44 = v92;
    outlined init with copy of MediaUserStateCenter?(v0 + *(v1 + 56), v92, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    v45 = type metadata accessor for InputOrigin();
    v46 = *(v45 - 8);
    v47 = (*(v46 + 48))(v44, 1, v45);
    v48 = v93;
    if (v47 != 1)
    {
      v49 = v89;
      outlined init with copy of MediaUserStateCenter?(v44, v89, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
      if ((*(v46 + 88))(v49, v45) == *MEMORY[0x277D61C88])
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        __swift_project_value_buffer(v50, static Logger.pommes);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_2232BB000, v51, v52, "Had previous Classic turn? FALSE - no PommesContext, but inputOrigin was .serverGenerated, indicating followup from fully on-device previous turn", v53, 2u);
          MEMORY[0x223DE0F80](v53, -1, -1);
        }

LABEL_28:
        outlined destroy of MediaUserStateCenter?(v44, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
        return 0;
      }

      (*(v46 + 8))(v49, v45);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.pommes);
    outlined init with copy of PommesSearchRequest(v0, v48);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v94 = v69;
      *v68 = 136315138;
      outlined init with copy of MediaUserStateCenter?(v48 + *(v39 + 56), v86, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
      v70 = String.init<A>(describing:)();
      v72 = v71;
      outlined destroy of PommesSearchRequest(v48);
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v94);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_2232BB000, v66, v67, "Had previous Classic turn? FALSE - no PommesContext and inputOrigin is %s, which is ambiguous", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      MEMORY[0x223DE0F80](v69, -1, -1);
      MEMORY[0x223DE0F80](v68, -1, -1);
    }

    else
    {

      outlined destroy of PommesSearchRequest(v48);
    }

    goto LABEL_28;
  }

  (*(v43 + 32))(v38, v33, v41);
  PommesContext.source.getter();
  v54 = (*(v24 + 88))(v28, v23);
  v55 = *MEMORY[0x277D56690];
  (*(v24 + 8))(v28, v23);
  if (v54 != v55)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Logger.pommes);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_21;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    v63 = "Had previous Classic turn? FALSE - PommesContext does not have source equal to .modalityTranslated";
    goto LABEL_20;
  }

  v56 = v88;
  PommesContext.promptContext.getter();
  v58 = v90;
  v57 = v91;
  if ((*(v91 + 48))(v56, 1, v90) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v56, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
LABEL_12:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.pommes);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_21;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    v63 = "Had previous Classic turn? FALSE - no conclusive information available";
LABEL_20:
    _os_log_impl(&dword_2232BB000, v60, v61, v63, v62, 2u);
    MEMORY[0x223DE0F80](v62, -1, -1);
LABEL_21:

    (*(v43 + 8))(v38, v41);
    return 0;
  }

  v75 = v85;
  (*(v57 + 32))(v85, v56, v58);
  if (Com_Apple_Siri_Product_Proto_PromptContext.strictPrompt.getter())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, static Logger.pommes);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v77, v78))
    {
      goto LABEL_51;
    }

    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = "Had previous Classic turn? TRUE - PommesContext has PromptContext with strictPrompt=true";
    goto LABEL_50;
  }

  v81 = *(Com_Apple_Siri_Product_Proto_PromptContext.promptTargetHints.getter() + 16);

  if (v81)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.pommes);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v77, v78))
    {
      goto LABEL_51;
    }

    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = "Had previous Classic turn? TRUE - PommesContext has PromptContext with non-empty promptTargetHints";
    goto LABEL_50;
  }

  if (Com_Apple_Siri_Product_Proto_PromptContext.objectDisambiguation.getter())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static Logger.pommes);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v77, v78))
    {
      goto LABEL_51;
    }

    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = "Had previous Classic turn? TRUE - PommesContext has PromptContext with objectDisambiguation=true";
    goto LABEL_50;
  }

  if ((Com_Apple_Siri_Product_Proto_PromptContext.dictationPrompt.getter() & 1) == 0)
  {
    (*(v57 + 8))(v75, v58);
    goto LABEL_12;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for Logger();
  __swift_project_value_buffer(v84, static Logger.pommes);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = "Had previous Classic turn? TRUE - PommesContext has PromptContext with dictationPrompt=true";
LABEL_50:
    _os_log_impl(&dword_2232BB000, v77, v78, v80, v79, 2u);
    MEMORY[0x223DE0F80](v79, -1, -1);
  }

LABEL_51:

  (*(v57 + 8))(v75, v58);
  (*(v43 + 8))(v38, v41);
  return 1;
}

uint64_t ClassicFollowupPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for PommesSearchReason();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = (&v26 - v14);
  if (PommesSearchRequest.hadPreviousClassicTurn.getter())
  {
    v16 = (a1 + *(type metadata accessor for PommesSearchRequest(0) + 32));
    v17 = *v16;
    v18 = v16[1];
    PommesSearchRequest.pommesCandidateId.getter(v15);
    v19 = type metadata accessor for PommesCandidateId();
    (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
    default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v10);
    v20 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(a1, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v17, v18, v15, v10, 0x6867696C66657270, 0xE900000000000074, 0xD00000000000001ELL, 0x80000002234D4160);
    (*(v6 + 8))(v10, v5);
    outlined destroy of MediaUserStateCenter?(v15, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    result = v20;
    if (v20)
    {
      return result;
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.pommes);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2232BB000, v23, v24, "ClassicFollowupPreflightClient#ignore could not build PommesResponse with given parameters", v25, 2u);
      MEMORY[0x223DE0F80](v25, -1, -1);
    }
  }

  return 1;
}

uint64_t OnDeviceSearchInstrumentationUtil.__allocating_init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

id OnDeviceSearchInstrumentationUtil.mockStream.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t OnDeviceSearchInstrumentationUtil.mockStream.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*OnDeviceSearchInstrumentationUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = OnDeviceSearchInstrumentationUtil.mockStream.getter();
  return KnowledgeFallbackInstrumentationUtil.mockStream.modify;
}

uint64_t OnDeviceSearchInstrumentationUtil.init(analyticsComponentIdGenerator:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

void OnDeviceSearchInstrumentationUtil.logEndOnDeviceSearch(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D59FB8]) init];
    if (v7)
    {
      v17 = v7;
      v8 = [objc_allocWithZone(MEMORY[0x277D59FC0]) init];
      if (v8)
      {
        v9 = v8;
        [v8 setExists_];
        [v17 setEnded:v9];
        [v6 setOnDeviceIndexSearchContext:v17];
        v10 = [objc_opt_self() processInfo];
        v11 = NSProcessInfo.isRunningUnitTests.getter();

        if (v11)
        {
          v12 = (*(*v4 + 96))();
        }

        else
        {
          v12 = [objc_opt_self() sharedStream];
        }

        [v12 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v13 = v17;
    }

    else
    {
      v13 = v6;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);
  v17 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2232BB000, v17, v15, "Unable to log end of OnDeviceSearch", v16, 2u);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

LABEL_15:
}

void OnDeviceSearchInstrumentationUtil.logStartOnDeviceSearch(requestId:pommesCandidateId:indexType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class *a5, SEL *a6, SEL *a7, const char *a8)
{
  v13 = v8;
  v15 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (v15)
  {
    v16 = v15;
    v17 = [objc_allocWithZone(MEMORY[0x277D59FB8]) init];
    if (v17)
    {
      v27 = v17;
      v18 = [objc_allocWithZone(*a5) init];
      if (v18)
      {
        v19 = v18;
        [v18 *a6];
        [v27 *a7];
        [v16 setOnDeviceIndexSearchContext:v27];
        v20 = [objc_opt_self() processInfo];
        v21 = NSProcessInfo.isRunningUnitTests.getter();

        if (v21)
        {
          v22 = (*(*v13 + 96))();
        }

        else
        {
          v22 = [objc_opt_self() sharedStream];
        }

        [v22 emitMessage_];
        swift_unknownObjectRelease();

        goto LABEL_15;
      }

      v23 = v27;
    }

    else
    {
      v23 = v16;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.pommes);
  v27 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2232BB000, v27, v25, a8, v26, 2u);
    MEMORY[0x223DE0F80](v26, -1, -1);
  }

LABEL_15:
}

uint64_t OnDeviceSearchInstrumentationUtil.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t OnDeviceSearchInstrumentationUtil.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t PlayThisLibraryItemPreflightClient.__allocating_init(rrClient:)(__int128 *a1)
{
  v2 = swift_allocObject();
  outlined init with take of DomainWarmupHandling(a1, v2 + 16);
  return v2;
}

uint64_t PlayThisLibraryItemPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v219 = a1;
  v198 = *v1;
  v199 = type metadata accessor for PommesSearchReason();
  v197 = *(v199 - 8);
  v2 = *(v197 + 64);
  MEMORY[0x28223BE20](v199, v3);
  v196 = &v182 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v195 = (&v182 - v8);
  v215 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v218 = *(v215 - 8);
  v9 = *(v218 + 64);
  MEMORY[0x28223BE20](v215, v10);
  v194 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v201 = *(v202 - 8);
  v12 = *(v201 + 64);
  MEMORY[0x28223BE20](v202, v13);
  v200 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for Siri_Nlu_External_UserParse();
  v210 = *(v211 - 8);
  v15 = *(v210 + 64);
  MEMORY[0x28223BE20](v211, v16);
  v209 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v18 = *(*(v207 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v207, v19);
  v193 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v206 = &v182 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v213 = (&v182 - v27);
  MEMORY[0x28223BE20](v26, v28);
  v216 = &v182 - v29;
  v30 = type metadata accessor for UsoIdentifier();
  v223 = *(v30 - 8);
  v224 = v30;
  v31 = *(v223 + 8);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v220 = &v182 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v192 = &v182 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v203 = &v182 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v221 = (&v182 - v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8, v45);
  v204 = &v182 - v46;
  v208 = type metadata accessor for RREntity();
  v47 = *(v208 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v208, v49);
  v212 = &v182 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
  v51 = *(v222 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v222, v53);
  v55 = &v182 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8, v58);
  v60 = &v182 - v59;
  v61 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61, v64);
  v66 = &v182 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for PommesSearchRequest(0);
  outlined init with copy of MediaUserStateCenter?(v219 + v214[11], v60, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  if ((*(v62 + 48))(v60, 1, v61) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v60, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_92;
    }

    goto LABEL_3;
  }

  v205 = v62;
  (*(v62 + 32))(v66, v60, v61);
  outlined init with copy of AppDataProviding((v1 + 2), &v228);
  v71 = v229;
  v72 = v230;
  __swift_project_boxed_opaque_existential_1(&v228, v229);
  v190 = v66;
  v73 = RRReferenceResolverProtocol.getEntitiesFromMarrsSpans(relevantTo:)(v66, v71, v72);
  v227 = MEMORY[0x277D84F90];
  v75 = *(v73 + 16);
  v191 = v61;
  if (!v75)
  {
    v217 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v76 = 0;
  v189 = (v47 + 16);
  v188 = (v47 + 8);
  v217 = MEMORY[0x277D84F90];
  v187 = v75 - 1;
  *&v74 = 136315138;
  v186 = v74;
  do
  {
    v77 = v76;
    while (1)
    {
      if (v77 >= *(v73 + 16))
      {
        __break(1u);
        goto LABEL_89;
      }

      outlined init with copy of MediaUserStateCenter?(v73 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v77, v55, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
      v78 = *(v222 + 48);
      RREntity.usoEntity.getter();
      static UsoEntity_CodeGenConverter.convert(entity:)();

      if (v226[3])
      {
        break;
      }

      outlined destroy of MediaUserStateCenter?(v226, &_sypSgMd, &_sypSgMR);
LABEL_10:
      ++v77;
      outlined destroy of MediaUserStateCenter?(v55, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
      if (v75 == v77)
      {
        goto LABEL_24;
      }
    }

    type metadata accessor for UsoEntity_common_MediaItem();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

    v217 = v225;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    __swift_project_value_buffer(v79, static Logger.pommes);
    v80 = &v55[v78];
    v81 = v208;
    (*v189)(v212, v80, v208);
    v82 = Logger.logObject.getter();
    v185 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v82, v185))
    {
      v83 = swift_slowAlloc();
      v182 = v83;
      v184 = swift_slowAlloc();
      v226[0] = v184;
      *v83 = v186;
      v183 = v82;
      RREntity.usoEntity.getter();
      v84 = type metadata accessor for UsoBuilderOptions();
      v85 = v204;
      (*(*(v84 - 8) + 56))(v204, 1, 1, v84);
      static UsoBuilderConversionUtils.convertEntityToRootedEntityGraph(entity:options:)();

      outlined destroy of MediaUserStateCenter?(v85, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
      v86 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
      v88 = v87;

      (*v188)(v212, v208);
      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, v226);

      v90 = v182;
      *(v182 + 1) = v89;
      v91 = v183;
      v92 = v90;
      _os_log_impl(&dword_2232BB000, v183, v185, "PlayThisLibraryItemPreflightClient#handle found relevantEntity: %s", v90, 0xCu);
      v93 = v184;
      __swift_destroy_boxed_opaque_existential_1(v184);
      MEMORY[0x223DE0F80](v93, -1, -1);
      MEMORY[0x223DE0F80](v92, -1, -1);
    }

    else
    {

      (*v188)(v212, v81);
    }

    v94 = outlined destroy of MediaUserStateCenter?(v55, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMd, &_s12SiriNLUTypes0A18_Nlu_External_SpanV_0A28ReferenceResolutionDataModel8RREntityVtMR);
    MEMORY[0x223DDF820](v94);
    if (*((v227 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v227 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v95 = *((v227 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v76 = v77 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v217 = v227;
  }

  while (v187 != v77);
LABEL_24:

  __swift_destroy_boxed_opaque_existential_1(&v228);
  if (v217 >> 62)
  {
    v96 = __CocoaSet.count.getter();
  }

  else
  {
    v96 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = v224;
  v98 = v221;
  if (!v96)
  {
LABEL_45:

    v114 = 0;
LABEL_48:
    v115 = v218;
    v116 = *(v219 + v214[19]);
    v117 = v215;
    v118 = v216;
    v119 = v213;
    if (*(v116 + 16))
    {
      v120 = v210;
      v121 = v209;
      v122 = v211;
      (*(v210 + 16))(v209, v116 + ((*(v120 + 80) + 32) & ~*(v120 + 80)), v211);
      v123 = Siri_Nlu_External_Span.matcherNames.getter();
      (*(v120 + 8))(v121, v122);
      if (*(v123 + 16))
      {
        (*(v115 + 16))(v118, v123 + ((*(v115 + 80) + 32) & ~*(v115 + 80)), v117);
        v124 = 0;
      }

      else
      {
        v124 = 1;
      }
    }

    else
    {
      v124 = 1;
    }

    (*(v115 + 56))(v118, v124, 1, v117);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v125 = type metadata accessor for Logger();
    v126 = __swift_project_value_buffer(v125, static Logger.pommes);
    outlined init with copy of MediaUserStateCenter?(v118, v119, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v228 = v130;
      *v129 = 136315138;
      outlined init with copy of MediaUserStateCenter?(v119, v206, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v131 = v114;
      v132 = String.init<A>(describing:)();
      v133 = v119;
      v135 = v134;
      outlined destroy of MediaUserStateCenter?(v133, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
      v136 = v132;
      v114 = v131;
      v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v135, &v228);
      v118 = v216;

      *(v129 + 4) = v137;
      _os_log_impl(&dword_2232BB000, v127, v128, "PlayThisLibraryItemPreflightClient#handle found userDialogAct: %s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x223DE0F80](v130, -1, -1);
      v138 = v129;
      v117 = v215;
      MEMORY[0x223DE0F80](v138, -1, -1);
    }

    else
    {

      outlined destroy of MediaUserStateCenter?(v119, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    }

    v139 = v205;
    v140 = *(v218 + 48);
    if (v140(v118, 1, v117) == 1)
    {
      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v141, v142))
      {
LABEL_79:

        (*(v139 + 8))(v190, v191);
        outlined destroy of MediaUserStateCenter?(v118, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
        return 1;
      }

      v143 = swift_slowAlloc();
      *v143 = 0;
      v144 = "PlayThisLibraryItemPreflightClient#handle userDialogAct is nil, this result cannot be used in the audio plugin so ignore and try going to the server";
    }

    else
    {
      if (v114)
      {
        v213 = v140;
        v217 = v126;

        v222 = v114;
        v145 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
        v146 = v145;
        v147 = *(v145 + 16);
        if (v147)
        {
          v148 = 0;
          v149 = v145 + ((v223[80] + 32) & ~v223[80]);
          v221 = (v223 + 8);
          while (v148 < *(v146 + 16))
          {
            (*(v223 + 2))(v220, v149 + *(v223 + 9) * v148, v224);
            v151 = UsoIdentifier.namespace.getter();
            if (v152)
            {
              if (v151 == 0x6574736973726570 && v152 == 0xED000064695F746ELL)
              {

LABEL_72:

                v153 = v224;
                v154 = *(v223 + 4);
                v155 = v192;
                v154(v192, v220, v224);
                v154(v203, v155, v153);
                v156 = v200;
                PlayThisLibraryItemPreflightClient.audioItem(from:)(v222);
                v157 = v193;
                outlined init with copy of MediaUserStateCenter?(v216, v193, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
                v158 = v215;
                v159 = v213;
                if (v213(v157, 1, v215) == 1)
                {
                  Siri_Nlu_External_UserDialogAct.init()();
                  v160 = v159(v157, 1, v158);
                  if (v160 != 1)
                  {
                    v160 = outlined destroy of MediaUserStateCenter?(v157, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
                  }
                }

                else
                {
                  v160 = (*(v218 + 32))(v194, v157, v158);
                }

                MEMORY[0x28223BE20](v160, v161);
                v163 = objc_allocWithZone(type metadata accessor for AudioExperience());
                v164 = AudioExperience.init(pluginId:queryConfidence:userDialogAct:builder:)();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                v165 = swift_allocObject();
                *(v165 + 16) = xmmword_2234D0FE0;
                *(v165 + 32) = v164;
                v166 = v219;
                v167 = (v219 + v214[8]);
                v168 = *v167;
                v169 = v167[1];
                v223 = v164;
                v170 = v195;
                PommesSearchRequest.pommesCandidateId.getter(v195);
                v171 = type metadata accessor for PommesCandidateId();
                (*(*(v171 - 8) + 56))(v170, 0, 1, v171);
                v172 = v196;
                default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v196);
                v173 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v166, v165, MEMORY[0x277D84F90], v168, v169, v170, v172, 0x616964656DLL, 0xE500000000000000, 0xD000000000000022, 0x80000002234D4270);

                (*(v197 + 8))(v172, v199);
                outlined destroy of MediaUserStateCenter?(v170, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
                if (v173)
                {
                  (*(v205 + 8))(v190, v191);

                  outlined destroy of MediaUserStateCenter?(v216, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
                  (*(v201 + 8))(v156, v202);
                  (*v221)(v203, v224);
                  return v173;
                }

                v174 = v223;
                v175 = Logger.logObject.getter();
                v176 = static os_log_type_t.error.getter();
                v177 = os_log_type_enabled(v175, v176);
                v178 = v202;
                v179 = v191;
                v180 = v205;
                if (v177)
                {
                  v181 = swift_slowAlloc();
                  *v181 = 0;
                  _os_log_impl(&dword_2232BB000, v175, v176, "PlayThisLibraryItemPreflightClient#ignore could not build PommesResponse with given parameters", v181, 2u);
                  MEMORY[0x223DE0F80](v181, -1, -1);
                }

                else
                {
                }

                (*(v180 + 8))(v190, v179);
                outlined destroy of MediaUserStateCenter?(v216, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
                (*(v201 + 8))(v156, v178);
                (*v221)(v203, v224);
                return 1;
              }

              v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v150)
              {
                goto LABEL_72;
              }
            }

            ++v148;
            (*v221)(v220, v224);
            if (v147 == v148)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_90;
        }

LABEL_75:

        v118 = v216;
        v139 = v205;
      }

      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v141, v142))
      {
        goto LABEL_79;
      }

      v143 = swift_slowAlloc();
      *v143 = 0;
      v144 = "PlayThisLibraryItemPreflightClient#handle no conclusive result, ignoring";
    }

    _os_log_impl(&dword_2232BB000, v141, v142, v144, v143, 2u);
    MEMORY[0x223DE0F80](v143, -1, -1);
    goto LABEL_79;
  }

  v99 = 0;
  v100 = v217 & 0xC000000000000001;
  v208 = v217 & 0xFFFFFFFFFFFFFF8;
  v204 = (v217 + 32);
  v101 = (v223 + 8);
  v189 = v96;
  v188 = (v217 & 0xC000000000000001);
  while (1)
  {
    if (v100)
    {
      v103 = MEMORY[0x223DDFF80](v99, v217);
      v104 = __OFADD__(v99, 1);
      v105 = (v99 + 1);
      if (v104)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v99 >= *(v208 + 16))
      {
        goto LABEL_91;
      }

      v102 = *&v204[8 * v99];

      v104 = __OFADD__(v99, 1);
      v105 = (v99 + 1);
      if (v104)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    v212 = v105;
    v222 = v103;
    v106 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();
    v107 = v106;
    v108 = *(v106 + 16);
    if (v108)
    {
      break;
    }

LABEL_28:

    v99 = v212;
    v100 = v188;
    if (v212 == v189)
    {
      goto LABEL_45;
    }
  }

  v109 = 0;
  v110 = v106 + ((v223[80] + 32) & ~v223[80]);
  while (v109 < *(v107 + 16))
  {
    (*(v223 + 2))(v98, v110 + *(v223 + 9) * v109, v97);
    v111 = UsoIdentifier.namespace.getter();
    if (v112)
    {
      if (v111 == 0x6574736973726570 && v112 == 0xED000064695F746ELL)
      {

        (*v101)(v98, v97);
LABEL_47:

        v114 = v222;
        goto LABEL_48;
      }

      v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v101)(v98, v97);
      if (v113)
      {
        goto LABEL_47;
      }
    }

    else
    {
      (*v101)(v98, v97);
    }

    ++v109;
    v97 = v224;
    v98 = v221;
    if (v108 == v109)
    {
      goto LABEL_28;
    }
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  swift_once();
LABEL_3:
  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static Logger.pommes);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_2232BB000, v68, v69, "PlayThisLibraryItemPreflightClient#handle nil delegatedUDA", v70, 2u);
    MEMORY[0x223DE0F80](v70, -1, -1);
  }

  return 1;
}

uint64_t closure #4 in PlayThisLibraryItemPreflightClient.handle(pommesSearchRequest:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMd, &_s10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_PlaybackSignalsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v28 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMR);
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2234CF920;
  (*(v19 + 16))(v22 + v21, a2, v18);
  AudioExperience.Builder.serverAudioResults.setter();
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.init()();
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding();
  (*(*(v23 - 8) + 56))(v17, 0, 1, v23);
  AudioExperience.Builder.audioUnderstanding.setter();
  Apple_Parsec_Siri_V2alpha_PlaybackSignals.init()();
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals();
  (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
  AudioExperience.Builder.playbackSignals.setter();
  AudioExperience.Builder.internalSignals.setter();
  AudioExperience.Builder.pegasusAudioType.setter();
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v28 = 0xD000000000000013;
  v29 = 0x80000002234DCCA0;
  v25 = UsoIdentifier.appBundleId.getter();
  MEMORY[0x223DDF6D0](v25);

  AudioExperience.Builder.launchID.setter();
  AudioExperience.Builder.systemExtensionBundleID.setter();
  AudioExperience.Builder.boltProxiedBundleID.setter();
  AudioExperience.Builder.shouldPerformAppSelection.setter();
  Apple_Parsec_Siri_V2alpha_AudioClientComponent.init()();
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  (*(*(v26 - 8) + 56))(v7, 0, 1, v26);
  return AudioExperience.Builder.audioClientComponent.setter();
}

uint64_t PlayThisLibraryItemPreflightClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_MediaItemType.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_MediaItemType.DefinedValues and conformance UsoEntity_common_MediaItemType.DefinedValues);
  }

  return result;
}

uint64_t OpenAppVocPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v3 = 0;
  v165[4] = *MEMORY[0x277D85DE8];
  v135 = *v1;
  v134 = type metadata accessor for PommesSearchReason();
  v133 = *(v134 - 8);
  v4 = *(v133 + 64);
  MEMORY[0x28223BE20](v134, v5);
  v132 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v131 = (&v130 - v10);
  v158 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v11 = *(v158 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v158, v13);
  v15 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v16 = *(v157 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v157, v18);
  v156 = &v130 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for Siri_Nlu_External_UserParse();
  v26 = *(v145 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v145, v28);
  v144 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for PommesSearchRequest(0);
  v30 = *(v130 + 76);
  v136 = a1;
  v31 = *(a1 + v30);
  v32 = MEMORY[0x277D84F90];
  v165[0] = MEMORY[0x277D84F90];
  v139 = *(v31 + 16);
  if (!v139)
  {
LABEL_41:
    v72 = *(v32 + 2);
    if (!v72)
    {
LABEL_59:

      goto LABEL_60;
    }

    v73 = 0;
    v74 = (v32 + 48);
    v75 = &_sypSgMd;
    v3 = MEMORY[0x277D84F70];
    v161 = *(v32 + 2);
    v162 = v32;
    while (1)
    {
      if (v73 >= *(v32 + 2))
      {
        goto LABEL_103;
      }

      v76 = *(v74 - 2);
      v77 = *v74;

      static UsoTask_CodegenConverter.convert(task:)();
      if (!v165[3])
      {
        break;
      }

      outlined init with copy of MediaUserStateCenter?(v165, &v164, v75, &_sypSgMR);
      type metadata accessor for UsoTask_open_common_App();
      if ((swift_dynamicCast() & 1) == 0)
      {
        type metadata accessor for UsoTask_noVerb_common_App();
        if (swift_dynamicCast())
        {
          goto LABEL_66;
        }

        __swift_destroy_boxed_opaque_existential_1(&v164);
        goto LABEL_44;
      }

      v78 = v75;

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      if (!v163 || (v79 = dispatch thunk of UsoEntity_common_App.appSection.getter(), , !v79))
      {
LABEL_66:

        goto LABEL_68;
      }

      dispatch thunk of UsoEntity_common_AppSubSection.name.getter();
      v81 = v80;

      if (!v81)
      {

LABEL_68:
        __swift_destroy_boxed_opaque_existential_1(&v164);
        outlined destroy of MediaUserStateCenter?(v165, &_sypSgMd, &_sypSgMR);

        v96 = UsoTask.vocAppIds.getter();
        if (v96)
        {
          v97 = v96;
          v98 = *(v96 + 16);
          if (v98)
          {
            v99 = 0;
            v100 = (v96 + 40);
            while (1)
            {
              if (v99 >= *(v97 + 16))
              {
                __break(1u);
                goto LABEL_108;
              }

              v102 = *(v100 - 1);
              v101 = *v100;
              v103._countAndFlagsBits = 0x6C7070612E6D6F63;
              v103._object = 0xEE00697269732E65;
              if (String.hasPrefix(_:)(v103))
              {

                goto LABEL_88;
              }

              v104 = objc_allocWithZone(MEMORY[0x277CC1E70]);

              v105 = MEMORY[0x223DDF550](v102, v101);

              v165[0] = 0;
              v106 = [v104 initWithBundleIdentifier:v105 allowPlaceholder:1 error:v165];

              if (v106)
              {
                break;
              }

              ++v99;
              v107 = v165[0];
              v108 = _convertNSErrorToError(_:)();

              v3 = v108;
              swift_willThrow();

              v100 += 2;
              if (v98 == v99)
              {

                if (one-time initialization token for pommes != -1)
                {
                  swift_once();
                }

                v109 = type metadata accessor for Logger();
                __swift_project_value_buffer(v109, static Logger.pommes);
                v110 = Logger.logObject.getter();
                v111 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v110, v111))
                {
                  v112 = swift_slowAlloc();
                  *v112 = 0;
                  v113 = "#OpenAppVoc: Found open app task with vocFile matches, but app is not installed or does not have special prefix. Ignoring.";
                  goto LABEL_84;
                }

                goto LABEL_85;
              }
            }

            v115 = v165[0];

LABEL_88:
            v116 = v136;
            v117 = (v136 + *(v130 + 32));
            v118 = *v117;
            v119 = v117[1];
            v120 = v131;
            PommesSearchRequest.pommesCandidateId.getter(v131);
            v121 = type metadata accessor for PommesCandidateId();
            (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
            v122 = v132;
            default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v132);
            v123 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v116, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v118, v119, v120, v122, 0x6867696C66657270, 0xE900000000000074, 0xD000000000000019, 0x80000002234D4310);
            (*(v133 + 8))(v122, v134);
            outlined destroy of MediaUserStateCenter?(v120, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
            if (v123)
            {
              v124 = v123;
              if (one-time initialization token for pommes != -1)
              {
                swift_once();
              }

              v125 = type metadata accessor for Logger();
              __swift_project_value_buffer(v125, static Logger.pommes);
              v126 = Logger.logObject.getter();
              v127 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v126, v127))
              {
                v128 = swift_slowAlloc();
                *v128 = 0;
                _os_log_impl(&dword_2232BB000, v126, v127, "#OpenAppVoc: Found open app task with vocFile match for installed app. Handling.", v128, 2u);
                MEMORY[0x223DE0F80](v128, -1, -1);
              }

              swift_bridgeObjectRelease_n();

              result = v124;
              goto LABEL_65;
            }

            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v129 = type metadata accessor for Logger();
            __swift_project_value_buffer(v129, static Logger.pommes);
            v110 = Logger.logObject.getter();
            v111 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              *v112 = 0;
              v113 = "#OpenAppVoc: Error. Unable to construct preflight response.";
              goto LABEL_84;
            }

            goto LABEL_85;
          }
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v114 = type metadata accessor for Logger();
        __swift_project_value_buffer(v114, static Logger.pommes);
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          v113 = "#OpenAppVoc: Found open app task but no vocFile matches. Ignoring.";
LABEL_84:
          _os_log_impl(&dword_2232BB000, v110, v111, v113, v112, 2u);
          MEMORY[0x223DE0F80](v112, -1, -1);
        }

LABEL_85:

        swift_bridgeObjectRelease_n();

        goto LABEL_64;
      }

      __swift_destroy_boxed_opaque_existential_1(&v164);
      v75 = v78;
      outlined destroy of MediaUserStateCenter?(v165, v78, &_sypSgMR);
      v72 = v161;
      v32 = v162;
LABEL_45:
      ++v73;
      v74 += 3;
      if (v72 == v73)
      {
        goto LABEL_59;
      }
    }

LABEL_44:
    outlined destroy of MediaUserStateCenter?(v165, v75, &_sypSgMR);
    goto LABEL_45;
  }

  v33 = 0;
  v142 = v31 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
  v141 = v26 + 16;
  v153 = v21 + 16;
  v152 = (v16 + 8);
  v154 = (v11 + 8);
  v151 = (v21 + 8);
  v140 = (v26 + 8);
  v148 = v15;
  v147 = v20;
  v146 = v25;
  v149 = v21;
  v138 = v26;
  v137 = v31;
  while (1)
  {
    if (v33 >= *(v31 + 16))
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v34 = *(v26 + 72);
    v143 = v33;
    (*(v26 + 16))(v144, v142 + v34 * v33, v145);
    v35 = Siri_Nlu_External_Span.matcherNames.getter();
    v36 = v35;
    v155 = *(v35 + 16);
    if (v155)
    {
      break;
    }

    v38 = v32;
LABEL_39:
    v33 = v143 + 1;
    v71 = v38;

    (*v140)(v144, v145);
    specialized Array.append<A>(contentsOf:)(v71);
    v26 = v138;
    v31 = v137;
    if (v33 == v139)
    {
      v32 = v165[0];
      goto LABEL_41;
    }
  }

  v37 = 0;
  v38 = v32;
  v150 = v35;
  while (1)
  {
    if (v37 >= *(v36 + 16))
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v161 = v37;
    v162 = v38;
    (*(v21 + 16))(v25, v36 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v37, v20);
    v40 = v156;
    Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
    Siri_Nlu_External_UserStatedTask.task.getter();
    (*v152)(v40, v157);
    v41 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
    if (v3)
    {
      break;
    }

    v42 = v41;
    (*v154)(v15, v158);
    v43 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
    v45 = v44;
    v46 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
    if (v46 >> 62)
    {
      v60 = v46;
      v47 = __CocoaSet.count.getter();
      v46 = v60;
      if (!v47)
      {
LABEL_25:

        (*v151)(v25, v20);
        v49 = v32;
        goto LABEL_26;
      }
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v47)
      {
        goto LABEL_25;
      }
    }

    v160 = 0;
    v48 = v46;
    v164 = v32;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 & ~(v47 >> 63), 0);
    if (v47 < 0)
    {
      goto LABEL_101;
    }

    v159 = v42;
    v49 = v164;
    if ((v48 & 0xC000000000000001) != 0)
    {
      v50 = 0;
      do
      {
        v51 = MEMORY[0x223DDFF80](v50, v48);
        v164 = v49;
        v52 = *(v49 + 16);
        v53 = *(v49 + 24);

        if (v52 >= v53 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v52 + 1, 1);
          v49 = v164;
        }

        ++v50;
        *(v49 + 16) = v52 + 1;
        v54 = (v49 + 24 * v52);
        v54[4] = v51;
        v54[5] = v43;
        v54[6] = v45;
      }

      while (v47 != v50);
    }

    else
    {
      v55 = (v48 + 32);
      do
      {
        v56 = *v55;
        v164 = v49;
        v57 = *(v49 + 16);
        v58 = *(v49 + 24);

        if (v57 >= v58 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v57 + 1, 1);
          v49 = v164;
        }

        *(v49 + 16) = v57 + 1;
        v59 = (v49 + 24 * v57);
        v59[4] = v56;
        v59[5] = v43;
        v59[6] = v45;
        ++v55;
        --v47;
      }

      while (v47);
    }

    v25 = v146;
    v20 = v147;
    (*v151)(v146, v147);
    v32 = MEMORY[0x277D84F90];
    v15 = v148;
    v3 = v160;
LABEL_26:
    v61 = *(v49 + 16);
    v62 = *(v162 + 2);
    v63 = v62 + v61;
    v21 = v149;
    if (__OFADD__(v62, v61))
    {
      goto LABEL_99;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v162;
    if (!isUniquelyReferenced_nonNull_native || v63 > *(v162 + 3) >> 1)
    {
      if (v62 <= v63)
      {
        v66 = v62 + v61;
      }

      else
      {
        v66 = v62;
      }

      v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v66, 1, v162);
    }

    v36 = v150;
    if (*(v49 + 16))
    {
      if ((*(v65 + 3) >> 1) - *(v65 + 2) < v61)
      {
        goto LABEL_102;
      }

      v67 = v65;
      swift_arrayInitWithCopy();

      v38 = v67;
      if (v61)
      {
        v68 = *(v67 + 2);
        v69 = __OFADD__(v68, v61);
        v70 = v68 + v61;
        if (v69)
        {
          goto LABEL_104;
        }

        *(v67 + 2) = v70;
      }
    }

    else
    {
      v39 = v65;

      v38 = v39;
      if (v61)
      {
        goto LABEL_100;
      }
    }

    v37 = v161 + 1;
    if (v161 + 1 == v155)
    {
      goto LABEL_39;
    }
  }

  (*v154)(v15, v158);
  (*v151)(v25, v20);

  (*v140)(v144, v145);

  if (one-time initialization token for pommes != -1)
  {
LABEL_108:
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  __swift_project_value_buffer(v82, static Logger.pommes);
  v83 = v3;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v86 = 138412290;
    v88 = v3;
    v89 = _swift_stdlib_bridgeErrorToNSError();
    *(v86 + 4) = v89;
    *v87 = v89;
    _os_log_impl(&dword_2232BB000, v84, v85, "#OpenAppVoc: Error scanning for matching USO tasks. %@", v86, 0xCu);
    outlined destroy of MediaUserStateCenter?(v87, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223DE0F80](v87, -1, -1);
    MEMORY[0x223DE0F80](v86, -1, -1);
  }

  else
  {
  }

LABEL_60:
  if (one-time initialization token for pommes != -1)
  {
LABEL_106:
    swift_once();
  }

  v90 = type metadata accessor for Logger();
  __swift_project_value_buffer(v90, static Logger.pommes);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_2232BB000, v91, v92, "#OpenAppVoc: No matching task. Ignoring.", v93, 2u);
    MEMORY[0x223DE0F80](v93, -1, -1);
  }

LABEL_64:
  result = 1;
LABEL_65:
  v95 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t UsoTask.vocAppIds.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of MediaUserStateCenter?(v6, v4, &_sypSgMd, &_sypSgMR);
  if (!v5)
  {
    outlined destroy of MediaUserStateCenter?(v6, &_sypSgMd, &_sypSgMR);
    goto LABEL_12;
  }

  outlined init with copy of MediaUserStateCenter?(v4, v3, &_sypSgMd, &_sypSgMR);
  type metadata accessor for UsoTask_open_common_App();
  if (!swift_dynamicCast())
  {
    type metadata accessor for UsoTask_noVerb_common_App();
    if (swift_dynamicCast())
    {

      dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
      goto LABEL_7;
    }

    outlined destroy of MediaUserStateCenter?(v6, &_sypSgMd, &_sypSgMR);
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_12:
    v0 = 0;
    goto LABEL_13;
  }

  dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
LABEL_7:

  if (v2)
  {
    v0 = CodeGenGlobalArgs.vocAppIds.getter();

    outlined destroy of MediaUserStateCenter?(v6, &_sypSgMd, &_sypSgMR);
  }

  else
  {
    outlined destroy of MediaUserStateCenter?(v6, &_sypSgMd, &_sypSgMR);

    v0 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_13:
  outlined destroy of MediaUserStateCenter?(v4, &_sypSgMd, &_sypSgMR);
  return v0;
}

uint64_t CodeGenGlobalArgs.vocAppIds.getter()
{
  v134 = type metadata accessor for SpanProperty();
  v130 = *(v134 - 8);
  v0 = *(v130 + 64);
  v2 = MEMORY[0x28223BE20](v134, v1);
  v127 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v119 = &v103 - v6;
  MEMORY[0x28223BE20](v5, v7);
  v131 = &v103 - v8;
  v122 = type metadata accessor for UsoEntitySpan.SpanSource();
  v9 = *(v122 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v122, v11);
  v105 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMR);
  v13 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123, v14);
  v121 = &v103 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v103 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = (&v103 - v27);
  v29 = type metadata accessor for UsoEntitySpan();
  v124 = *(v29 - 8);
  v30 = *(v124 + 64);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v110 = &v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v118 = &v103 - v36;
  MEMORY[0x28223BE20](v35, v37);
  v132 = &v103 - v38;
  result = dispatch thunk of CodeGenGlobalArgs.getEntitySpansFor(attributeName:)();
  if (!result)
  {
    return result;
  }

  v40 = *(result + 16);
  v133 = v29;
  v120 = v40;
  if (v40)
  {
    v129 = v28;
    v41 = 0;
    v115 = v124 + 16;
    v114 = *MEMORY[0x277D5E488];
    v113 = (v9 + 104);
    v112 = (v9 + 56);
    v42 = (v9 + 48);
    v104 = (v9 + 32);
    v106 = (v9 + 8);
    v107 = (v124 + 8);
    v109 = (v124 + 32);
    v111 = MEMORY[0x277D84F90];
    v117 = v21;
    v108 = (v9 + 48);
    v128 = v25;
    v116 = result;
    while (1)
    {
      if (v41 >= *(result + 16))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        return result;
      }

      v126 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v125 = *(v124 + 72);
      (*(v124 + 16))(v132, result + v126 + v125 * v41, v29);
      v43 = v129;
      UsoEntitySpan.sourceComponent.getter();
      v44 = v122;
      (*v113)(v25, v114, v122);
      (*v112)(v25, 0, 1, v44);
      v45 = *(v123 + 48);
      v46 = v121;
      outlined init with copy of MediaUserStateCenter?(v43, v121, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      outlined init with copy of MediaUserStateCenter?(v25, v46 + v45, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      v47 = *v42;
      if ((*v42)(v46, 1, v44) == 1)
      {
        break;
      }

      v48 = v117;
      outlined init with copy of MediaUserStateCenter?(v46, v117, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      if (v47(v46 + v45, 1, v44) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v128, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
        outlined destroy of MediaUserStateCenter?(v129, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
        (*v106)(v48, v44);
LABEL_5:
        outlined destroy of MediaUserStateCenter?(v46, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSg_AFtMR);
        v29 = v133;
        goto LABEL_6;
      }

      v49 = v105;
      (*v104)(v105, v46 + v45, v44);
      lazy protocol witness table accessor for type UsoEntitySpan.SpanSource and conformance UsoEntitySpan.SpanSource();
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      v51 = *v106;
      v52 = v49;
      v53 = v117;
      (*v106)(v52, v44);
      outlined destroy of MediaUserStateCenter?(v128, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      outlined destroy of MediaUserStateCenter?(v129, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      v51(v53, v44);
      v42 = v108;
      outlined destroy of MediaUserStateCenter?(v46, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      v29 = v133;
      if (v50)
      {
        goto LABEL_14;
      }

LABEL_6:
      (*v107)(v132, v29);
      v25 = v128;
LABEL_7:
      ++v41;
      result = v116;
      if (v120 == v41)
      {
        goto LABEL_20;
      }
    }

    outlined destroy of MediaUserStateCenter?(v25, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
    outlined destroy of MediaUserStateCenter?(v43, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
    if (v47(v46 + v45, 1, v44) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v46, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMd, &_s12SiriOntology13UsoEntitySpanV0E6SourceOSgMR);
      v29 = v133;
LABEL_14:
      v54 = *v109;
      (*v109)(v110, v132, v29);
      v55 = v111;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v135 = v55;
      v25 = v128;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 16) + 1, 1);
        v55 = v135;
      }

      v58 = *(v55 + 16);
      v57 = *(v55 + 24);
      if (v58 >= v57 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1);
        v55 = v135;
      }

      *(v55 + 16) = v58 + 1;
      v111 = v55;
      v29 = v133;
      v54((v55 + v126 + v58 * v125), v110, v133);
      v42 = v108;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v111 = MEMORY[0x277D84F90];
LABEL_20:

  v59 = *(v111 + 16);
  if (v59)
  {
    v132 = *(v124 + 16);
    v60 = v111 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
    v61 = *(v124 + 72);
    v62 = (v124 + 8);
    v63 = MEMORY[0x277D84F90];
    do
    {
      v64 = v118;
      (v132)(v118, v60, v29);
      v65 = UsoEntitySpan.properties.getter();
      result = (*v62)(v64, v29);
      v66 = *(v65 + 16);
      v67 = *(v63 + 2);
      v68 = v67 + v66;
      if (__OFADD__(v67, v66))
      {
        goto LABEL_71;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v68 > *(v63 + 3) >> 1)
      {
        if (v67 <= v68)
        {
          v69 = v67 + v66;
        }

        else
        {
          v69 = v67;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v69, 1, v63);
        v63 = result;
      }

      v29 = v133;
      if (*(v65 + 16))
      {
        if ((*(v63 + 3) >> 1) - *(v63 + 2) < v66)
        {
          goto LABEL_73;
        }

        v70 = (*(v130 + 80) + 32) & ~*(v130 + 80);
        v71 = *(v130 + 72);
        swift_arrayInitWithCopy();

        if (v66)
        {
          v72 = *(v63 + 2);
          v73 = __OFADD__(v72, v66);
          v74 = v72 + v66;
          if (v73)
          {
            goto LABEL_74;
          }

          *(v63 + 2) = v74;
        }
      }

      else
      {

        if (v66)
        {
          goto LABEL_72;
        }
      }

      v60 += v61;
      --v59;
    }

    while (v59);
  }

  else
  {

    v63 = MEMORY[0x277D84F90];
  }

  v133 = *(v63 + 2);
  if (v133)
  {
    v75 = 0;
    v132 = v130 + 16;
    v129 = (v130 + 8);
    v76 = (v130 + 32);
    v77 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v75 >= *(v63 + 2))
      {
        goto LABEL_70;
      }

      v78 = (*(v130 + 80) + 32) & ~*(v130 + 80);
      v79 = *(v130 + 72);
      (*(v130 + 16))(v131, &v63[v78 + v79 * v75], v134);
      if (SpanProperty.key.getter() == 0x656D614E707061 && v80 == 0xE700000000000000)
      {
        break;
      }

      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v81)
      {
        goto LABEL_47;
      }

      result = (*v129)(v131, v134);
LABEL_41:
      if (v133 == ++v75)
      {
        goto LABEL_53;
      }
    }

LABEL_47:
    v82 = *v76;
    (*v76)(v127, v131, v134);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v135 = v77;
    if ((v83 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v77 + 16) + 1, 1);
      v77 = v135;
    }

    v85 = *(v77 + 16);
    v84 = *(v77 + 24);
    if (v85 >= v84 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v84 > 1, v85 + 1, 1);
      v77 = v135;
    }

    *(v77 + 16) = v85 + 1;
    result = (v82)(v77 + v78 + v85 * v79, v127, v134);
    goto LABEL_41;
  }

  v77 = MEMORY[0x277D84F90];
LABEL_53:

  v86 = *(v77 + 16);
  if (v86)
  {
    v87 = *(v130 + 16);
    v88 = v77 + ((*(v130 + 80) + 32) & ~*(v130 + 80));
    v132 = *(v130 + 72);
    v133 = v87;
    v89 = (v130 + 8);
    v90 = MEMORY[0x277D84F90];
    do
    {
      v92 = v119;
      v93 = v134;
      v133(v119, v88, v134);
      v94 = SpanProperty.valueString.getter();
      v96 = v95;
      (*v89)(v92, v93);
      if (v96)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v90 + 2) + 1, 1, v90);
        }

        v98 = *(v90 + 2);
        v97 = *(v90 + 3);
        if (v98 >= v97 >> 1)
        {
          v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v90);
        }

        *(v90 + 2) = v98 + 1;
        v91 = &v90[16 * v98];
        *(v91 + 4) = v94;
        *(v91 + 5) = v96;
      }

      v88 += v132;
      --v86;
    }

    while (v86);
  }

  else
  {

    v90 = MEMORY[0x277D84F90];
  }

  v99 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v90);

  v100 = *(v99 + 16);
  if (v100)
  {
    v101 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v99 + 16), 0);
    v102 = specialized Sequence._copySequenceContents(initializing:)(&v135, v101 + 4, v100, v99);
    result = outlined consume of Set<String>.Iterator._Variant();
    if (v102 != v100)
    {
      goto LABEL_75;
    }

    return v101;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}