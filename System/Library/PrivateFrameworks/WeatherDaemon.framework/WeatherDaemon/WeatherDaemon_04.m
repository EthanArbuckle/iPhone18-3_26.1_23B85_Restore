void sub_1000649B8()
{
  v1 = *(v0 + 16);
  ReferenceCountedLazy.increase()();
  sub_1000032B8(v2, v2[3]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  sub_100006994(v2);
  ReferenceCountedLazy.decrease()();
}

uint64_t sub_100064AC4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  sub_1000032B8(a1, v7);
  return a4(a2, a3, v7, v8);
}

uint64_t sub_100064B28()
{
  v1 = *v0;
  v2 = v0[2];
  ReferenceCountedLazy.increase()();
  sub_1000032B8(v6, v6[3]);
  dispatch thunk of AppConfigurationManagerType.fetchAppConfig(cachePolicy:)();
  v3 = zalgo.getter();
  v4 = Promise.always<A>(on:disposeOn:closure:)();

  sub_100006994(v6);
  return v4;
}

uint64_t sub_100064C08()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100064D54()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for Daemon();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  v3 = v1[13];
  v4 = sub_100068008();
  v3(v4);
  sub_10006803C();

  v5 = v1[1];
  v6 = sub_100068018();
  v5(v6);
  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3B08, &qword_100080A28);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A55C8, &qword_1000826B0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3AA0, &qword_100082220);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  Definition.thenConfigure(_:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A55D0, &qword_1000826B8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A55D8, &qword_1000826C0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A55E0, &qword_1000826C8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for WDSEndpoint();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  v7 = sub_100068008();
  v3(v7);
  sub_10006803C();

  v8 = sub_100068018();
  v5(v8);
  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A55E8, &qword_1000826D0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5360, &qword_1000824F8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for DatabaseManager();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  sub_100003020(&qword_1000A55F0, &qword_1000826D8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  v9 = sub_100068008();
  v3(v9);
  sub_10006803C();

  v10 = sub_100068018();
  v5(v10);
  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  v11 = sub_100068008();
  v3(v11);
  sub_10006803C();

  v12 = sub_100068018();
  v5(v12);
  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for NotificationConfigurationManager();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A50A8, &qword_1000821F8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3B10, &unk_100080A30);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A55F8, &qword_1000826E0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  type metadata accessor for GeocodeService();
  Definition.thenConfigure<A>(as:configuration:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5600, &qword_1000826E8);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  v13 = sub_100068008();
  v3(v13);
  sub_10006803C();

  v14 = sub_100068018();
  v5(v14);
  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5608, &qword_1000826F0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_10006275C();
  type metadata accessor for LocationMetadataStore();
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A5610, &qword_1000826F8);
  RegistrationContainer.register<A>(_:name:factory:)();
  sub_100068024();
  v15 = sub_100068008();
  v3(v15);
  sub_10006803C();

  v16 = sub_100068018();
  v5(v16);
  ProxyContainer.private.getter();

  RegistrationContainer.lazy(block:)();
}

uint64_t sub_100065568(void *a1)
{
  v2 = a1[4];
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for DatabaseManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5018, &qword_100082168);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA0, &qword_100082220);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v27[3])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = a1[4];
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for NotificationAuthorizationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  v10 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55C8, &qword_1000826B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B38, &qword_100080A50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v13 = v25;
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v26;
  v15 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A48, &qword_100080980);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v16 = result;
    v17 = type metadata accessor for Daemon();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC8weatherd6Daemon_databaseManager] = v4;
    *&v18[OBJC_IVAR____TtC8weatherd6Daemon_notificationsManager] = v6;
    sub_100006930(v27, &v18[OBJC_IVAR____TtC8weatherd6Daemon_activityManager]);
    *&v18[OBJC_IVAR____TtC8weatherd6Daemon_notificationAuthorizationManager] = v9;
    *&v18[OBJC_IVAR____TtC8weatherd6Daemon_decommissioningService] = v11;
    v19 = &v18[OBJC_IVAR____TtC8weatherd6Daemon_severeNotificationsManager];
    *v19 = v13;
    *(v19 + 1) = v14;
    *&v18[OBJC_IVAR____TtC8weatherd6Daemon_predictedLocationsService] = v16;
    sub_100030944(0, &qword_1000A5678, OS_dispatch_source_ptr);
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    swift_unknownObjectRetain();
    v20 = v9;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v21 = static OS_dispatch_queue.main.getter();
    v22 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

    *&v18[OBJC_IVAR____TtC8weatherd6Daemon_sigtermListener] = v22;
    type metadata accessor for Settings.Daemon.Performance();
    static Settings.Daemon.Performance.logConfiguration()();
    v24.receiver = v18;
    v24.super_class = v17;
    v23 = objc_msgSendSuper2(&v24, "init");
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_100006994(v27);
    return v23;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000658D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for WeatherStatisticsCaching();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  __chkstk_darwin(v3);
  v34 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for WeatherAvailabilityCaching();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v30);
  v31 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WeatherDataCaching();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003020(&qword_1000A5658, &qword_100082728);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v28 - v16;
  v18 = a1[4];
  sub_1000032B8(a1, a1[3]);
  v19 = type metadata accessor for WDSEndpoint();
  dispatch thunk of ResolverType.resolve<A>(_:)();
  result = sub_100007374(v17, 1, v19);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v21 = *(v10 + 104);
  v28[1] = v13;
  v21(v13, enum case for WeatherDataCaching.disabled(_:), v9);
  (*(v6 + 104))(v31, enum case for WeatherAvailabilityCaching.disabled(_:), v30);
  (*(v32 + 104))(v34, enum case for WeatherStatisticsCaching.disabled(_:), v33);
  v22 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55E8, &qword_1000826D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v37)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v23 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55E0, &qword_1000826C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v36)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v24 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55D8, &qword_1000826C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v35)
  {
    v25 = type metadata accessor for WeatherDataServiceProxy();
    v26 = objc_allocWithZone(v25);
    result = WeatherDataServiceProxy.init(endpoint:caching:availableDataSetCaching:statisticsCaching:networkMonitor:authenticator:appConfigurationSettingsProvider:)();
    v27 = v29;
    v29[3] = v25;
    v27[4] = &protocol witness table for WeatherDataServiceProxy;
    *v27 = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100065CC8(void *a1)
{
  v2 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5018, &qword_100082168);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A58, &qword_100080990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A60, &qword_100080998);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v6 = objc_allocWithZone(type metadata accessor for DaemonDecommissioningService());
    return DaemonDecommissioningService.init(notificationManager:predictedLocationsNotificationsManager:predictedLocationsIntentDonationManager:)();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100065DF0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for XPCActivityManager();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = XPCActivityManager.init(onActivityCompletion:)();
  a1[3] = v2;
  a1[4] = &protocol witness table for XPCActivityManager;
  *a1 = result;
  return result;
}

id sub_100065E60()
{
  v0 = objc_opt_self();

  return [v0 neSessionClearCaches];
}

uint64_t sub_100065E98(void *a1, void *a2)
{
  v4 = type metadata accessor for XPCActivity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[4];
  sub_1000032B8(a2, a2[3]);
  v10 = type metadata accessor for PrecipitationNotificationsManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = result;
  v13 = a1[4];
  sub_1000032B8(a1, a1[3]);
  static XPCActivity.Notifications.getter();
  v42 = v10;
  v43 = sub_100067FAC(&qword_1000A5668, &type metadata accessor for PrecipitationNotificationsManager);
  v41[0] = v12;
  v32 = v12;
  dispatch thunk of XPCActivityManagerType.registerActivity(_:handler:)();
  v14 = v4;
  v33 = *(v5 + 8);
  v34 = v5 + 8;
  v33(v8, v4);
  sub_100006994(v41);
  v15 = a2[4];
  sub_1000032B8(a2, a2[3]);
  v16 = type metadata accessor for DatabaseManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = result;
  if (qword_1000A3248 != -1)
  {
    swift_once();
  }

  sub_100002FE8(v14, static XPCActivity.Databases);
  v42 = v16;
  v43 = sub_100067FAC(&qword_1000A5670, type metadata accessor for DatabaseManager);
  v41[0] = v17;
  v31 = v17;
  dispatch thunk of XPCActivityManagerType.registerActivity(_:handler:)();
  sub_100006994(v41);
  v18 = a2[4];
  sub_1000032B8(a2, a2[3]);
  sub_100003020(&qword_1000A3A58, &qword_100080990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v39)
  {
    goto LABEL_10;
  }

  sub_100006D78(&v38, v41);
  static XPCActivity.predictedLocationNotifications.getter();
  v19 = v42;
  v20 = v43;
  v21 = sub_1000032B8(v41, v42);
  v39 = v19;
  v40 = *(v20 + 8);
  v22 = sub_100006D18(&v38);
  (*(*(v19 - 8) + 16))(v22, v21, v19);
  dispatch thunk of XPCActivityManagerType.registerActivity(_:handler:)();
  v30 = v14;
  v23 = v33;
  v33(v8, v14);
  sub_100006994(&v38);
  v24 = a2[4];
  sub_1000032B8(a2, a2[3]);
  sub_100003020(&qword_1000A3A60, &qword_100080998);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v36)
  {
    sub_100006D78(&v35, &v38);
    static XPCActivity.predictedLocationIntentDonations.getter();
    v25 = v39;
    v26 = v40;
    v27 = sub_1000032B8(&v38, v39);
    v36 = v25;
    v37 = *(v26 + 8);
    v28 = sub_100006D18(&v35);
    (*(*(v25 - 8) + 16))(v28, v27, v25);
    dispatch thunk of XPCActivityManagerType.registerActivity(_:handler:)();

    v23(v8, v30);
    sub_100006994(&v35);
    sub_100006994(&v38);
    return sub_100006994(v41);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_100066328@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55D8, &qword_1000826C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    v5 = type metadata accessor for WDSAuthenticatorFactory();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = WDSAuthenticatorFactory.init(clientConfigurationProvider:)();
    a2[3] = v5;
    a2[4] = &protocol witness table for WDSAuthenticatorFactory;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000663D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v9[3])
  {
    v5 = type metadata accessor for AppConfigurationSettingsProvider();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = sub_10006A314(v9);
    a2[3] = v5;
    result = sub_100067FAC(&qword_1000A5660, type metadata accessor for AppConfigurationSettingsProvider);
    a2[4] = result;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000664AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = type metadata accessor for WDSVersion();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003020(&qword_1000A5658, &qword_100082728);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for WDSEndpoint();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55D0, &qword_1000826B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_100006D78(&v22, v24);
    v18 = a1[4];
    sub_1000032B8(a1, a1[3]);
    dispatch thunk of ResolverType.resolve<A>(_:)();
    result = sub_100007374(v10, 1, v11);
    if (result != 1)
    {
      (*(v12 + 32))(v15, v10, v11);
      sub_1000032B8(v24, v24[3]);
      v19 = v21;
      (*(v3 + 104))(v6, enum case for WDSVersion.tokenServiceVersion(_:), v21);
      dispatch thunk of WDSAuthenticatorFactoryType.makeAuthenticator(for:version:isJWTEnabled:)();
      (*(v3 + 8))(v6, v19);
      (*(v12 + 8))(v15, v11);
      return sub_100006994(v24);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100066784@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v17 = type metadata accessor for EndpointConfiguration();
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v17);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AppConfiguration();
  v9 = *(v16 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v16);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.WeatherEnvironment.contentEnvironment.getter();
  SettingReader.read<A>(_:)();

  v13 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v20)
  {
    sub_100006D78(&v19, v21);
    sub_1000032B8(v21, v21[3]);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.endpointConfig(for:)();
    EndpointConfiguration.weatherDataURL.getter();
    WDSEndpoint.init(url:)();
    (*(v5 + 8))(v8, v17);
    (*(v9 + 8))(v12, v16);
    return sub_100006994(v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100066A7C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_100066AE4(void *a1)
{
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  type metadata accessor for Settings.Daemon.Performance();
  static Settings.Daemon.Performance.clearCachesWithinXPCActivity.getter();
  SettingReader.read<A>(_:)();

  v2 = 0;
  if (v6 == 1 && (v3 = a1[4], sub_1000032B8(a1, a1[3]), sub_100003020(&qword_1000A55F0, &qword_1000826D8), result = dispatch thunk of ResolverType.resolve<A>(_:)(), (v2 = result) == 0))
  {
    __break(1u);
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for DatabaseManager());
    return sub_10004CE28(v2);
  }

  return result;
}

uint64_t sub_100066BC8()
{
  v0 = type metadata accessor for LazyOptions();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_100067FAC(&qword_1000A3AF0, &type metadata accessor for LazyOptions);
  sub_100003020(&qword_1000A3AF8, &qword_100080A20);
  sub_1000129F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v2 = sub_100003020(&qword_1000A55F0, &qword_1000826D8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return ReferenceCountedLazy.init(options:loadBlock:)();
}

uint64_t sub_100066D00@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for WeatherDataStore();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = WeatherDataStore.init()();
  *a1 = result;
  return result;
}

uint64_t sub_100066D64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5620, &qword_100082708);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ReferenceCountedLazyAppConfigurationManager();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    a2[3] = v6;
    result = sub_100067FAC(&qword_1000A5650, type metadata accessor for ReferenceCountedLazyAppConfigurationManager);
    a2[4] = result;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100066E2C(void *a1)
{
  v1 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    v3 = type metadata accessor for NotificationConfigurationManager();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    return NotificationConfigurationManager.init(appConfigurationManager:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100066EBC(uint64_t a1)
{
  v2 = type metadata accessor for LazyOptions();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_100006930(a1, v9);
  v4 = swift_allocObject();
  sub_100006D78(v9, v4 + 16);
  *&v9[0] = _swiftEmptyArrayStorage;
  sub_100067FAC(&qword_1000A3AF0, &type metadata accessor for LazyOptions);
  sub_100003020(&qword_1000A3AF8, &qword_100080A20);
  sub_1000129F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v5 = sub_100003020(&qword_1000A50A8, &qword_1000821F8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return ReferenceCountedLazy.init(options:loadBlock:)();
}

uint64_t sub_100067030@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B08, &qword_100080A28);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    return sub_100006D78(&v5, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000670B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A55F8, &qword_1000826E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v11)
  {
    v6 = a1[4];
    sub_1000032B8(a1, a1[3]);
    sub_100003020(&qword_1000A5608, &qword_1000826F0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v10)
    {
      v7 = type metadata accessor for LocationMetadataManager();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      result = LocationMetadataManager.init(geocodeService:store:)();
      a2[3] = v7;
      a2[4] = &protocol witness table for LocationMetadataManager;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000671CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5358, &qword_1000824F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5648, &qword_100082720);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v12)
  {
    sub_100006D78(&v11, v13);
    v8 = type metadata accessor for GeocodeService();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    result = GeocodeService.init(appConfigurationManager:privacySampler:locationMetadataUpdater:)();
    *a2 = result;
    a2[1] = &protocol witness table for GeocodeService;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10006731C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[4];
  sub_1000032B8(a2, a2[3]);
  sub_100003020(&qword_1000A5618, &qword_100082700);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5[3])
  {
    GeocodeService.setupWeatherKitGeocoding(using:)();
    return sub_100006994(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000673A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5600, &qword_1000826E8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v5 = type metadata accessor for LocationManager();
    v6 = objc_allocWithZone(v5);
    result = LocationManager.init(geocodeManager:locationCacheManager:)();
    a2[3] = v5;
    a2[4] = &protocol witness table for LocationManager;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006744C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CurrentLocationCacheManager();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = CurrentLocationCacheManager.init(store:)();
  a1[3] = v2;
  a1[4] = &protocol witness table for CurrentLocationCacheManager;
  *a1 = result;
  return result;
}

uint64_t sub_1000674C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  type metadata accessor for LocationMetadataStore();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    *a2 = result;
    a2[1] = &protocol witness table for LocationMetadataStore;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100067528()
{
  GeocodeManagerGetCurrentCountryCode()();
  v0 = type metadata accessor for LocationMetadataStore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return LocationMetadataStore.init(database:configuredCountryCode:)();
}

uint64_t sub_100067590()
{
  v0 = type metadata accessor for Database.JournalingMode();
  v21 = *(v0 - 8);
  v22 = v0;
  v1 = *(v21 + 64);
  __chkstk_darwin(v0);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Database.VacuumMode();
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v19);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Database.CacheSize();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for Database.RecoveryMode();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AssertionOptions();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for Database.Location();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  type metadata accessor for Database();
  type metadata accessor for LocationMetadataStore();
  static LocationMetadataStore.location.getter();
  static AssertionOptions.weatherAssertions.getter();
  (*(v10 + 104))(v13, enum case for Database.RecoveryMode.truncate(_:), v9);
  static LocationMetadataStore.preferredCacheSize.getter();
  (*(v3 + 104))(v6, enum case for Database.VacuumMode.incremental(_:), v19);
  (*(v21 + 104))(v20, enum case for Database.JournalingMode.wal(_:), v22);
  v23 = 0;
  return Database.init(location:assertions:journalingMode:recoveryMode:preferredCacheSize:vacuumMode:busyTimeout:)();
}

uint64_t sub_1000678EC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for CoherenceContainerName.weatherd(_:);
  v3 = type metadata accessor for CoherenceContainerName();
  (*(*(v3 - 8) + 104))(a1, v2, v3);

  return sub_100006BD4(a1, 0, 1, v3);
}

uint64_t sub_100067980()
{
  sub_100003020(&qword_1000A5618, &qword_100082700);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5350, &qword_1000824E8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5358, &qword_1000824F0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A5620, &qword_100082708);

  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_100067AD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B08, &qword_100080A28);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    v5 = type metadata accessor for GeocodeWeatherService();
    v6 = swift_allocObject();
    sub_100006D78(&v7, v6 + 16);
    a2[3] = v5;
    result = sub_100067FAC(&qword_1000A5640, type metadata accessor for GeocodeWeatherService);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100067BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LazyOptions();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = *(a2 + 16);
  v15 = &type metadata for WrappedLock;
  v16 = sub_100067EE8();
  v14 = v6;
  sub_100006930(a1, v13);
  v7 = swift_allocObject();
  sub_100006D78(v13, v7 + 16);
  *&v13[0] = _swiftEmptyArrayStorage;
  sub_100067FAC(&qword_1000A3AF0, &type metadata accessor for LazyOptions);
  v8 = v6;
  sub_100003020(&qword_1000A3AF8, &qword_100080A20);
  sub_1000129F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9 = sub_100003020(&qword_1000A5620, &qword_100082708);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  return ReferenceCountedLazy.init(lock:options:loadBlock:)();
}

uint64_t sub_100067D48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A5630, &qword_100082710);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v11)
  {
    v6 = a1[4];
    sub_1000032B8(a1, a1[3]);
    sub_100003020(&qword_1000A5638, &qword_100082718);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v10)
    {
      v7 = type metadata accessor for AppConfigurationManager();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      result = AppConfigurationManager.init(appConfigurationService:appConfigurationStore:)();
      a2[3] = v7;
      a2[4] = &protocol witness table for AppConfigurationManager;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100067E58()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_100067EE8()
{
  result = qword_1000A5628;
  if (!qword_1000A5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5628);
  }

  return result;
}

uint64_t sub_100067F3C()
{
  sub_100006994((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100067FAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100068024()
{
}

uint64_t sub_10006803C()
{

  return Definition.inScope(_:)();
}

uint64_t sub_100068054@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v19 - v9;
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  Date.addingTimeInterval(_:)();
  Date.init()();
  Date.addingTimeInterval(_:)();
  v13 = *(v3 + 8);
  v13(v7, v2);
  v14 = static Date.> infix(_:_:)();
  v15 = (v14 & 1) == 0;
  if (v14)
  {
    v16 = v12;
  }

  else
  {
    v16 = v10;
  }

  if (v15)
  {
    v17 = v12;
  }

  else
  {
    v17 = v10;
  }

  v13(v16, v2);
  return (*(v3 + 32))(a1, v17, v2);
}

__n128 sub_100068200(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10006820C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006822C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

double sub_100068268()
{
  v1 = v0;
  v2 = type metadata accessor for PredictedLocationsConfiguration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0[21];
  sub_1000032B8(v0 + 17, v0[20]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.predictedLocations.getter();
  PredictedLocationsConfiguration.minProbabilityToConsiderLocationForSevereWeatherNotification.getter();
  v14 = v13;
  PredictedLocationsConfiguration.minStayToConsiderLocationForSevereWeatherNotification.getter();
  PredictedLocationsConfiguration.minDistanceFromCurrentLocationToConsiderLocationForSevereWeatherNotification.getter();
  PredictedLocationsConfiguration.minDistanceFromSavedLocationsToConsiderLocationForSevereWeatherNotification.getter();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v15 = v0[22];

  SettingProperty.wrappedValue.getter();

  if (v19 == 1)
  {
    v16 = v1[23];

    SettingProperty.wrappedValue.getter();

    return v18;
  }

  return v14;
}

uint64_t sub_10006848C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for Location.Identifier();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v9 = type metadata accessor for LocationCoordinate();
  v2[14] = v9;
  v10 = *(v9 - 8);
  v2[15] = v10;
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v12 = type metadata accessor for LocationDataModel();
  v2[17] = v12;
  v13 = *(v12 - 8);
  v2[18] = v13;
  v14 = *(v13 + 64) + 15;
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_100068684, 0, 0);
}

uint64_t sub_100068684()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_100068268();
  v5 = v4;
  v7 = v6;
  v0[2] = v2;
  v0[20] = v8;

  sub_100031B60();
  if (!*(v0[2] + 16))
  {
    v17 = v0 + 7;
    v16 = v0[7];

    static Logger.predictedLocationNotifications.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!sub_100069158(v19))
    {
      goto LABEL_14;
    }

    v20 = sub_100031128();
    *v20 = 134217984;
    *(v20 + 4) = v3;
    v21 = "No predicted locations met the probability threshold (%f) for severe notification";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v18, v2, v21, v20, 0xCu);

    goto LABEL_14;
  }

  sub_100032330();
  if (!*(v0[2] + 16))
  {
    v17 = v0 + 8;
    v22 = v0[8];

    static Logger.predictedLocationNotifications.getter();
    v18 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (!sub_100069158(v23))
    {
      goto LABEL_14;
    }

    v20 = sub_100031128();
    *v20 = 134217984;
    *(v20 + 4) = v5;
    v21 = "No predicted locations met the minimum stay duration (%f) for severe notification";
    goto LABEL_13;
  }

  v9 = v0[4];
  v10 = v9[11];
  sub_1000032B8(v9 + 7, v9[10]);
  v2 = dispatch thunk of LocationManagerType.currentCLLocation.getter();
  sub_100031D00();

  if (*(v0[2] + 16))
  {
    v11 = v0[4];
    v12 = v11[15];
    v13 = v11[16];
    sub_1000032B8(v11 + 12, v12);
    v14 = async function pointer to dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()[1];
    v15 = swift_task_alloc();
    v0[21] = v15;
    *v15 = v0;
    v15[1] = sub_1000689B8;

    return dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()(v12, v13);
  }

  v17 = v0 + 9;
  v24 = v0[9];

  static Logger.predictedLocationNotifications.getter();
  v18 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (sub_100069158(v25))
  {
    v20 = sub_100031128();
    *v20 = 134217984;
    *(v20 + 4) = v7;
    v21 = "No predicted locations met the minimum current location distance (%f) for severe notification";
    goto LABEL_13;
  }

LABEL_14:
  v26 = *v17;
  v27 = v0[5];
  v28 = v0[6];

  v29 = sub_100030CAC();
  v30(v29);
  v31 = v0[19];
  v32 = v0[16];
  v33 = v0[13];
  v35 = v0[9];
  v34 = v0[10];
  v37 = v0[7];
  v36 = v0[8];

  v38 = v0[1];

  return v38(_swiftEmptyArrayStorage);
}

uint64_t sub_1000689B8(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_100068AB8, 0, 0);
}

uint64_t sub_100068AB8()
{
  if (v0[22])
  {
    v1 = v0[22];
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = v1[2];
  if (v2)
  {
    v3 = v0[18];
    v4 = v0[15];
    v5 = v0[12];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = *(v3 + 16);
    v3 += 16;
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v40 = *(v3 + 56);
    v41 = v6;
    v38 = (v4 + 8);
    v39 = (v5 + 8);
    v37 = (v3 - 8);
    do
    {
      v8 = v0[19];
      v10 = v0[16];
      v9 = v0[17];
      v12 = v0[13];
      v11 = v0[14];
      v13 = v0[11];
      v41(v8, v7, v9);
      LocationDataModel.identifier.getter();
      Location.Identifier.coordinate.getter();
      (*v39)(v12, v13);
      LocationCoordinate.init(_:)();
      LocationCoordinate.clLocation.getter();
      (*v38)(v10, v11);
      (*v37)(v8, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 += v40;
      --v2;
    }

    while (v2);
  }

  v15 = v0[20];
  sub_100031F80();

  v16 = v0[2];
  if (!v16[2])
  {
    v17 = v0[10];
    v18 = v0[2];

    static Logger.predictedLocationNotifications.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[20];
      v22 = sub_100031128();
      *v22 = 134217984;
      *(v22 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v19, v20, "No predicted locations met the minimum saved locations distance (%f) for severe notification", v22, 0xCu);
    }

    v23 = v0[10];
    v24 = v0[5];
    v25 = v0[6];

    v26 = sub_100030CAC();
    v27(v26);
    v16 = _swiftEmptyArrayStorage;
  }

  v28 = v0[19];
  v29 = v0[16];
  v30 = v0[13];
  v32 = v0[9];
  v31 = v0[10];
  v34 = v0[7];
  v33 = v0[8];

  v35 = v0[1];

  return v35(v16);
}

uint64_t sub_100068DE0()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100068EA0, 0, 0);
}

uint64_t sub_100068EA0()
{
  v1 = v0[5];
  static Logger.predictedLocationNotifications.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will fetch predicted locations for notifications", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  v9 = sub_100030CAC();
  v10(v9);
  v11 = *sub_1000032B8((v8 + 16), *(v8 + 40));
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_100068FE0;

  return sub_1000389D0(1);
}

uint64_t sub_100068FE0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *v1;
  v3[7] = a1;

  v6 = swift_task_alloc();
  v3[8] = v6;
  *v6 = v5;
  v6[1] = sub_10004F658;
  v7 = v3[2];

  return sub_10006848C(a1);
}

BOOL sub_100069158(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100069174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000691A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000691E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100069254(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = type metadata accessor for Location();
  v10 = sub_100006FBC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v10);
  v56 = v16;
  v57 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v48[-v17];
  v19 = type metadata accessor for Logger();
  v20 = sub_100006FBC(v19);
  v52 = v21;
  v53 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  v25 = &v48[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.notifications.getter();
  v26 = *(v12 + 16);
  v58 = a3;
  v59 = v9;
  v54 = v26;
  v55 = v12 + 16;
  v26(v18, a3, v9);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v49 = v28;
    v30 = v29;
    v50 = swift_slowAlloc();
    v61[0] = v50;
    *v30 = 136446723;
    *(v30 + 4) = sub_10000D9FC(a1, a2, v61);
    *(v30 + 12) = 2160;
    *(v30 + 14) = 1752392040;
    *(v30 + 22) = 2081;
    v31 = Location.id.getter();
    v51 = a1;
    v32 = v4;
    v34 = v33;
    v35 = sub_100069944();
    v36(v35);
    v37 = sub_10000D9FC(v31, v34, v61);
    v4 = v32;
    a1 = v51;

    *(v30 + 24) = v37;
    _os_log_impl(&_mh_execute_header, v27, v49, "Requesting severe event details with identifier: %{public}s for location: %{private,mask.hash}s", v30, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v38 = sub_100069944();
    v39(v38);
  }

  (*(v52 + 8))(v25, v53);
  v40 = v4[2];
  ReferenceCountedLazy.increase()();
  sub_100005360();
  v41 = static OS_dispatch_queue.notifications.getter();
  sub_100006930(v61, v60);
  v42 = v57;
  v54(v57, v58, v18);
  v43 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v44 = swift_allocObject();
  sub_1000435A8(v60, v44 + 16);
  *(v44 + 56) = a1;
  *(v44 + 64) = a2;
  (*(v12 + 32))(v44 + v43, v42, v18);
  type metadata accessor for WeatherAlert();

  firstly<A>(on:closure:)();

  v45 = zalgo.getter();
  v46 = Promise.always<A>(on:disposeOn:closure:)();

  sub_100006994(v61);
  return v46;
}

uint64_t sub_1000696B8(void *a1, uint64_t a2, uint64_t a3)
{
  v12[2] = a2;
  v12[3] = a3;
  v4 = type metadata accessor for TimeZone();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v12[1] = a1[4];
  sub_1000032B8(a1, v9);
  static Locale.languageIdentifier.getter();
  Location.timeZone.getter();
  TimeZone.identifier.getter();
  (*(v5 + 8))(v8, v4);
  v10 = dispatch thunk of WeatherDataServiceType.fetchWeatherAlert(with:for:timezone:)();

  return v10;
}

uint64_t sub_100069818()
{
  v1 = type metadata accessor for Location();
  sub_100006FBC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  sub_100006994((v0 + 16));
  v8 = *(v0 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100069944()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 176);
  return result;
}

uint64_t sub_100069980(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v98 = a3;
  v99 = a2;
  v85 = type metadata accessor for Expression();
  v6 = sub_100006FBC(v85);
  v84 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10000E970();
  v12 = v11 - v10;
  v13 = type metadata accessor for UUID();
  v14 = sub_100006FBC(v13);
  v92 = v15;
  v93 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_10000E970();
  v91 = v19 - v18;
  v20 = type metadata accessor for IncomingMessageEntity();
  v21 = sub_100006FBC(v20);
  v95 = v22;
  v96 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_10000E970();
  v94 = v26 - v25;
  v27 = type metadata accessor for String.Encoding();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  sub_10000E970();
  v90 = v30 - v29;
  v31 = type metadata accessor for APSMessage();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  sub_10000E970();
  v35 = (v34 - v33);
  v36 = type metadata accessor for Logger();
  v37 = sub_100006FBC(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v37);
  v97 = &v83 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v45 = &v83 - v44;
  static Logger.notifications.getter();
  sub_10006A228(a1, v35);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  v48 = os_log_type_enabled(v46, v47);
  v100 = v39;
  v101 = v36;
  v83 = v12;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v102[0] = v50;
    *v49 = 136315138;
    v51 = v4;
    v89 = v31;
    v52 = a1;
    v54 = *v35;
    v53 = v35[1];

    sub_10006A28C(v35);
    v55 = v54;
    v4 = v51;
    v56 = sub_10000D9FC(v55, v53, v102);
    a1 = v52;
    v31 = v89;

    *(v49 + 4) = v56;
    _os_log_impl(&_mh_execute_header, v46, v47, "Storing incoming message with identifier: %s", v49, 0xCu);
    sub_100006994(v50);
    v39 = v100;
    v36 = v101;
    sub_10000FA7C();
    sub_10000FA7C();
  }

  else
  {

    sub_10006A28C(v35);
  }

  v57 = *(v39 + 8);
  v57(v45, v36);
  v58 = *(v4 + 16);
  ReferenceCountedLazy.increase()();
  v59 = objc_opt_self();
  v60 = *(a1 + *(v31 + 24));
  v61 = v31;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v102[0] = 0;
  v63 = [v59 dataWithPropertyList:isa format:100 options:0 error:{v102, v83, v84, v85}];

  v64 = v102[0];
  if (v63)
  {
    v86 = v57;
    v89 = v58;
    v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    static String.Encoding.utf8.getter();
    v87 = v65;
    v88 = v67;
    String.init(data:encoding:)();
    v68 = a1;
    v69 = *a1;
    v70 = v68[1];
    v71 = (v68 + *(v61 + 28));
    v72 = *v71;
    v73 = v71[1];

    v74 = v91;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v92 + 8))(v74, v93);
    IncomingMessageEntity.init(id:messageID:channel:userInfo:)();
    NotificationStore.incomingMessages.getter();
    v76 = v87;
    v77 = v88;
    dispatch thunk of Table.save.getter();

    dispatch thunk of Save.entity(_:)();

    NotificationStore.incomingMessages.getter();
    dispatch thunk of Table.delete.getter();

    v102[3] = type metadata accessor for Date();
    v102[4] = &protocol witness table for Date;
    sub_100006D18(v102);
    Date.init(timeIntervalSinceNow:)();
    <= infix(_:_:)();
    sub_100006994(v102);
    dispatch thunk of Delete.where(_:)();

    sub_100006C78(v76, v77);

    v79 = sub_10006A2F8();
    v80(v79);
    v81 = sub_10006A2E8();
    v82(v81);
    ReferenceCountedLazy.decrease()();
    return v99();
  }

  else
  {
    v75 = v64;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_10006A228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for APSMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A28C(uint64_t a1)
{
  v2 = type metadata accessor for APSMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006A2E8()
{
  v2 = *(v1 - 200);
  v3 = *(*(v1 - 208) + 8);
  return v0;
}

uint64_t sub_10006A2F8()
{
  v2 = *(*(v1 - 296) + 8);
  result = v0;
  v4 = *(v1 - 288);
  return result;
}

uint64_t sub_10006A314(uint64_t *a1)
{
  v3 = type metadata accessor for AppConfiguration();
  v4 = sub_100006FBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  sub_1000032B8(a1, a1[3]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  (*(v6 + 32))(v1 + OBJC_IVAR____TtC8weatherd32AppConfigurationSettingsProvider_appConfiguration, v10, v3);
  sub_100006994(a1);
  return v1;
}

uint64_t sub_10006A414()
{
  v1 = OBJC_IVAR____TtC8weatherd32AppConfigurationSettingsProvider_appConfiguration;
  v2 = type metadata accessor for AppConfiguration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for AppConfigurationSettingsProvider()
{
  result = qword_1000A58B8;
  if (!qword_1000A58B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006A504()
{
  result = type metadata accessor for AppConfiguration();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006A594@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for NamedNetworkConfiguration();
  v3 = sub_100006FBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v3);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = v42 - v11;
  v12 = sub_100003020(&qword_1000A5940, qword_1000829E8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v48 = v42 - v14;
  v15 = type metadata accessor for NetworkConfiguration();
  v16 = sub_100006FBC(v15);
  v49 = v17;
  v50 = v16;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v16);
  v45 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v47 = v42 - v22;
  v23 = [objc_allocWithZone(NSProcessInfo) init];
  v24 = [v23 processName];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v42[1] = OBJC_IVAR____TtC8weatherd32AppConfigurationSettingsProvider_appConfiguration;
  v43 = v1;
  result = AppConfiguration.namedNetworkConfigurations.getter();
  v29 = result;
  v30 = 0;
  v31 = *(result + 16);
  v51 = v5 + 16;
  v52 = v31;
  while (1)
  {
    if (v52 == v30)
    {

      v35 = v48;
      v36 = v50;
      sub_100006BD4(v48, 1, 1, v50);
      v37 = v47;
      AppConfiguration.network.getter();
      v38 = sub_100007374(v35, 1, v36);
      v39 = v49;
      if (v38 != 1)
      {
        sub_10006A9F4(v35);
      }

      goto LABEL_14;
    }

    if (v30 >= *(v29 + 16))
    {
      break;
    }

    (*(v5 + 16))(v10, v29 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v30, v2);
    if (NamedNetworkConfiguration.name.getter() == v25 && v32 == v27)
    {

LABEL_13:

      v40 = v44;
      (*(v5 + 32))(v44, v10, v2);
      v41 = v48;
      NamedNetworkConfiguration.networkConfiguration.getter();
      (*(v5 + 8))(v40, v2);
      v36 = v50;
      sub_100006BD4(v41, 0, 1, v50);
      v39 = v49;
      v37 = v47;
      (*(v49 + 32))(v47, v41, v36);
LABEL_14:
      (*(v39 + 16))(v45, v37, v36);
      WDSClientConfiguration.init(networkConfiguration:)();
      return (*(v39 + 8))(v37, v36);
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_13;
    }

    result = (*(v5 + 8))(v10, v2);
    ++v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006A9F4(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A5940, qword_1000829E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006AA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v27[-v11];
  v13 = type metadata accessor for PrecipitationForecastSummaries();
  v14 = *(v13 + 20);
  type metadata accessor for ForecastSummary();
  sub_10006C76C();
  sub_100006BD4(v15, v16, v17, v18);
  v19 = *(v13 + 24);
  sub_10006C76C();
  sub_100006BD4(v20, v21, v22, v23);
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  (*(v25 + 16))(a3, a1, v24);
  v28 = a1;
  sub_10006AC1C(sub_10006C034, a2, v12);
  sub_10006AF70(v12, a2, v10);

  (*(v25 + 8))(a1, v24);
  sub_10006C054(v12, a3 + v14);
  return sub_10006C054(v10, a3 + v19);
}

uint64_t sub_10006AC1C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v5 = type metadata accessor for ForecastSummary();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v19 = a2;
  v11 = *(a2 + 16);
  v12 = (v6 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      v14 = 1;
      v15 = v17;
      return sub_100006BD4(v15, v14, 1, v5);
    }

    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5);
    v13 = v18(v9);
    if (v3)
    {
      return (*v12)(v9, v5);
    }

    if (v13)
    {
      break;
    }

    (*v12)(v9, v5);
    ++v10;
  }

  v15 = v17;
  (*(v6 + 32))(v17, v9, v5);
  v14 = 0;
  return sub_100006BD4(v15, v14, 1, v5);
}

uint64_t sub_10006ADD8()
{
  v0 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v11 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ForecastSummary.endTime.getter();
  if (sub_100007374(v3, 1, v4) == 1)
  {
    sub_10006C0E4(v3, &qword_1000A3800, &unk_100080860);
    v9 = 1;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v9 = static Date.> infix(_:_:)();
    (*(v5 + 8))(v8, v4);
  }

  return v9 & 1;
}

uint64_t sub_10006AF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22[-v8];
  v10 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22[-v12];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v22[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000E244(a1, v9);
  v19 = type metadata accessor for ForecastSummary();
  if (sub_100007374(v9, 1, v19) == 1)
  {
    sub_10006C0E4(v9, &qword_1000A37F8, &unk_100082A40);
    sub_100006BD4(v13, 1, 1, v14);
LABEL_4:
    sub_10006C0E4(v13, &qword_1000A3800, &unk_100080860);
    return sub_100006BD4(a3, 1, 1, v19);
  }

  ForecastSummary.endTime.getter();
  (*(*(v19 - 8) + 8))(v9, v19);
  if (sub_100007374(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  v21 = (*(v15 + 32))(v18, v13, v14);
  __chkstk_darwin(v21);
  *&v22[-16] = a1;
  *&v22[-8] = v18;
  sub_10006AC1C(sub_10006C0C4, a2, a3);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_10006B238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v40 = a2;
  v4 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v35 - v6;
  v39 = type metadata accessor for Date();
  v36 = *(v39 - 8);
  v8 = *(v36 + 64);
  __chkstk_darwin(v39);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ForecastSummary();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003020(&qword_1000A5948, &qword_100082A50);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  v20 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v35 - v25;
  v27 = *(v11 + 16);
  v38 = a1;
  v27(&v35 - v25, a1, v10);
  sub_100006BD4(v26, 0, 1, v10);
  v28 = *(v16 + 56);
  sub_10000E244(v26, v19);
  sub_10000E244(v40, &v19[v28]);
  if (sub_100007374(v19, 1, v10) == 1)
  {
    sub_10006C0E4(v26, &qword_1000A37F8, &unk_100082A40);
    if (sub_100007374(&v19[v28], 1, v10) == 1)
    {
      sub_10006C0E4(v19, &qword_1000A37F8, &unk_100082A40);
LABEL_11:
      v30 = 0;
      return v30 & 1;
    }

    goto LABEL_6;
  }

  sub_10000E244(v19, v24);
  if (sub_100007374(&v19[v28], 1, v10) == 1)
  {
    sub_10006C0E4(v26, &qword_1000A37F8, &unk_100082A40);
    (*(v11 + 8))(v24, v10);
LABEL_6:
    sub_10006C0E4(v19, &qword_1000A5948, &qword_100082A50);
    goto LABEL_7;
  }

  (*(v11 + 32))(v14, &v19[v28], v10);
  sub_10006C1FC(&qword_1000A5950, &type metadata accessor for ForecastSummary);
  LODWORD(v40) = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v11 + 8);
  v33(v14, v10);
  sub_10006C0E4(v26, &qword_1000A37F8, &unk_100082A40);
  v33(v24, v10);
  sub_10006C0E4(v19, &qword_1000A37F8, &unk_100082A40);
  if (v40)
  {
    goto LABEL_11;
  }

LABEL_7:
  ForecastSummary.endTime.getter();
  v29 = v39;
  if (sub_100007374(v7, 1, v39) == 1)
  {
    sub_10006C0E4(v7, &qword_1000A3800, &unk_100080860);
    v30 = 1;
  }

  else
  {
    v32 = v35;
    v31 = v36;
    (*(v36 + 32))(v35, v7, v29);
    v30 = static Date.> infix(_:_:)();
    (*(v31 + 8))(v32, v29);
  }

  return v30 & 1;
}

uint64_t sub_10006B724(void *a1)
{
  v3 = v1;
  v5 = sub_100003020(&qword_1000A5970, &qword_100082A60);
  v6 = sub_100006FBC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_10006C144();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24[1] = 0;
  type metadata accessor for Date();
  sub_10006C73C();
  sub_10006C1FC(v14, v15);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = type metadata accessor for PrecipitationForecastSummaries();
    v17 = *(v16 + 20);
    v24[0] = 1;
    type metadata accessor for ForecastSummary();
    sub_10006C754();
    sub_10006C1FC(v18, v19);
    sub_10006C7B8(v3 + v17, v24);
    v20 = *(v16 + 24);
    v23 = 2;
    sub_10006C7B8(v3 + v20, &v23);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_10006B910(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_10006C7DC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
    if (v6 || (sub_10006C7DC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1954047342 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_10006C7DC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int sub_10006BA34(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_10006BA7C(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0x746E6572727563;
  }

  return 1954047342;
}

uint64_t sub_10006BAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006B910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006BB1C(uint64_t a1)
{
  v2 = sub_10006C144();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006BB58(uint64_t a1)
{
  v2 = sub_10006C144();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006BB94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v44 - v8;
  v9 = type metadata accessor for Date();
  v10 = sub_100006FBC(v9);
  v47 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100003020(&qword_1000A5958, &qword_100082A58);
  v15 = sub_100006FBC(v51);
  v48 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  v19 = type metadata accessor for PrecipitationForecastSummaries();
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v20 + 28);
  type metadata accessor for ForecastSummary();
  v53 = v24;
  sub_10006C76C();
  sub_100006BD4(v25, v26, v27, v28);
  v52 = *(v20 + 32);
  sub_10006C76C();
  sub_100006BD4(v29, v30, v31, v32);
  v33 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_10006C144();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100006994(a1);
    sub_10006C0E4(&v23[v53], &qword_1000A37F8, &unk_100082A40);
    return sub_10006C0E4(&v23[v52], &qword_1000A37F8, &unk_100082A40);
  }

  else
  {
    v34 = v49;
    v44 = a1;
    v56 = 0;
    sub_10006C73C();
    sub_10006C1FC(v35, v36);
    v37 = v50;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v47 + 32))(v23, v37, v9);
    v55 = 1;
    sub_10006C754();
    sub_10006C1FC(v38, v39);
    sub_10006C77C();
    sub_10006C054(v34, &v23[v53]);
    v54 = 2;
    v40 = v46;
    sub_10006C77C();
    v41 = sub_10006C7A8();
    v42(v41);
    sub_10006C054(v40, &v23[v52]);
    sub_10006C198(v23, v45);
    sub_100006994(v44);
    return sub_10000E2B4(v23);
  }
}

uint64_t type metadata accessor for PrecipitationForecastSummaries()
{
  result = qword_1000A59D0;
  if (!qword_1000A59D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006C054(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C0E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003020(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10006C144()
{
  result = qword_1000A5960;
  if (!qword_1000A5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5960);
  }

  return result;
}

uint64_t sub_10006C198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationForecastSummaries();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C1FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PrecipitationForecastSummaries.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PrecipitationForecastSummaries.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10006C398);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10006C3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100007374(v8, a2, v7);
}

uint64_t sub_10006C4A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
    v10 = a1 + *(a4 + 20);
  }

  return sub_100006BD4(v10, a2, a2, v9);
}

void sub_10006C558()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10006C5DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006C5DC()
{
  if (!qword_1000A59E0)
  {
    type metadata accessor for ForecastSummary();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A59E0);
    }
  }
}

unint64_t sub_10006C638()
{
  result = qword_1000A5A18;
  if (!qword_1000A5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5A18);
  }

  return result;
}

unint64_t sub_10006C690()
{
  result = qword_1000A5A20;
  if (!qword_1000A5A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5A20);
  }

  return result;
}

unint64_t sub_10006C6E8()
{
  result = qword_1000A5A28;
  if (!qword_1000A5A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5A28);
  }

  return result;
}

uint64_t sub_10006C77C()
{
  v2 = *(v0 - 104);

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_10006C7A8()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 104);
  return result;
}

uint64_t sub_10006C7B8(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)(a1, a2, v2, v3, v4);
}

uint64_t sub_10006C7DC()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10006C7F8()
{
  sub_100030E38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v10 = sub_100006FF0(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = sub_100070B3C();
  sub_1000707FC(v13, v14, &unk_1000A3930, &qword_100080900);
  v15 = type metadata accessor for TaskPriority();
  v16 = sub_100007374(v0, 1, v15);

  if (v16 == 1)
  {
    sub_100070860(v0, &unk_1000A3930, &qword_100080900);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100030C40(v15);
    (*(v17 + 8))(v0, v15);
  }

  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100070860(v6, &unk_1000A3930, &qword_100080900);
    sub_100070AEC();
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    *(v21 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_100070AEC();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v2;

  swift_task_create();

  sub_100070860(v6, &unk_1000A3930, &qword_100080900);

LABEL_9:
  sub_100030E08();
}

void sub_10006CAAC()
{
  sub_100030E38();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v10 = sub_100006FF0(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = sub_100070B3C();
  sub_1000707FC(v13, v14, &unk_1000A3930, &qword_100080900);
  v15 = type metadata accessor for TaskPriority();
  v16 = sub_100007374(v0, 1, v15);

  if (v16 == 1)
  {
    sub_100070860(v0, &unk_1000A3930, &qword_100080900);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100030C40(v15);
    v18 = *(v17 + 8);
    v19 = sub_100070B54();
    v20(v19);
  }

  v22 = *(v2 + 16);
  v21 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v22)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100070860(v6, &unk_1000A3930, &qword_100080900);
    sub_100070AEC();
    v24 = swift_allocObject();
    *(v24 + 16) = v4;
    *(v24 + 24) = v2;
    sub_100003020(&unk_1000A5AA0, &qword_100082C70);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();
  sub_100070AEC();
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  *(v23 + 24) = v2;

  sub_100003020(&unk_1000A5AA0, &qword_100082C70);
  swift_task_create();

  sub_100070860(v6, &unk_1000A3930, &qword_100080900);

LABEL_9:
  sub_100030E08();
}

uint64_t sub_10006CD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_1000707FC(a3, v26 - v11, &unk_1000A3930, &qword_100080900);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100007374(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100070860(v12, &unk_1000A3930, &qword_100080900);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_100003020(&qword_1000A3800, &unk_100080860);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_100070860(a3, &unk_1000A3930, &qword_100080900);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100070860(a3, &unk_1000A3930, &qword_100080900);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100003020(&qword_1000A3800, &unk_100080860);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id sub_10006D068()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithDescription:v1];

  return v2;
}

uint64_t sub_10006D0E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for MachService();
  v11 = sub_100006FF0(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100006930(a1, v5 + qword_1000A5A38);
  v14 = (v5 + qword_1000A5A40);
  *v14 = a2;
  v14[1] = a3;
  *(v5 + qword_1000A5A48) = a4;
  swift_unknownObjectRetain();

  static MachServices.Notifications.getter();
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.notifications.getter();
  v15 = XPCDaemonService.init(machService:targetQueue:)();
  swift_unknownObjectRelease();

  sub_100006994(a1);
  return v15;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NotificationsManager.evaluateConnectionCriteria(_:)(NSXPCConnection a1)
{
  PartyProcessXCPDaemonConnectionPredicate = type metadata accessor for FirstPartyProcessXCPDaemonConnectionPredicate();
  v2 = sub_100006FBC(PartyProcessXCPDaemonConnectionPredicate);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static XPCDaemonConnectionPredicate<>.firstPartyProcess.getter();
  v9[2] = PartyProcessXCPDaemonConnectionPredicate;
  v9[3] = v8;
  v9[1] = &protocol witness table for FirstPartyProcessXCPDaemonConnectionPredicate;
  dispatch thunk of XPCDaemonService.evaluate<each A>(_:is:)();
  (*(v4 + 8))(v8, PartyProcessXCPDaemonConnectionPredicate);
}

uint64_t sub_10006D328()
{
  sub_100006994((v0 + qword_1000A5A38));
  v1 = *(v0 + qword_1000A5A40);
  swift_unknownObjectRelease();
  v2 = *(v0 + qword_1000A5A48);
}

uint64_t sub_10006D378(uint64_t a1)
{
  sub_100006994((a1 + qword_1000A5A38));
  v2 = *(a1 + qword_1000A5A40);
  swift_unknownObjectRelease();
  v3 = *(a1 + qword_1000A5A48);
}

uint64_t NotificationsManager.schedule()()
{
  sub_100030C4C();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_100003020(&unk_1000A3930, &qword_100080900);
  sub_100006FF0(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v1[5] = v6;
  v7 = *(v6 - 8);
  v1[6] = v7;
  v8 = *(v7 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10006D4D0, 0, 0);
}

uint64_t sub_10006D4D0()
{
  v1 = v0[8];
  static Logger.notifications.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10004B070(v3))
  {
    *sub_100030F7C() = 0;
    sub_1000310B0(&_mh_execute_header, v4, v5, "Received proxy request for updating notification fetch schedule");
    sub_10004B030();
  }

  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[6];

  v9 = *(v8 + 8);
  v10 = sub_100030CE0();
  v9(v10);
  if (WDWeatherAppIsInstalled())
  {
    v12 = v0[3];
    v11 = v0[4];
    sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
    sub_100070B60();
    v13 = sub_10006D068();
    v0[9] = v13;
    v14 = type metadata accessor for TaskPriority();
    sub_100006BD4(v11, 1, 1, v14);
    v15 = v12;
    v16 = v13;
    v17 = static NotificationsActor.shared.getter();
    sub_100070AD4();
    v20 = sub_1000708BC(v18, v19);
    v21 = swift_allocObject();
    v21[2] = v17;
    v21[3] = v20;
    v21[4] = v15;
    v21[5] = v16;
    v22 = sub_10006CD70(0, 0, v11, &unk_100082BC8, v21);
    v0[10] = v22;
    v23 = async function pointer to Task<>.value.getter[1];
    v24 = swift_task_alloc();
    v0[11] = v24;
    v25 = sub_100003020(&qword_1000A3800, &unk_100080860);
    *v24 = v0;
    v24[1] = sub_10006D7C8;
    v26 = v0[2];

    return Task<>.value.getter(v26, v22, v25);
  }

  else
  {
    v27 = v0[7];
    static Logger.notifications.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (sub_10004B070(v29))
    {
      *sub_100030F7C() = 0;
      sub_1000310B0(&_mh_execute_header, v30, v31, "Weather app was uninstalled; rejecting scheduling request");
      sub_10004B030();
    }

    v33 = v0[6];
    v32 = v0[7];
    v34 = v0[5];
    v35 = v0[2];

    v36 = sub_100030CE0();
    v9(v36);
    v37 = type metadata accessor for Date();
    sub_100070B78(v37);
    v38 = v0[7];
    v39 = v0[8];
    v40 = v0[4];
    [objc_opt_self() neSessionClearCaches];

    sub_100030C70();

    return v41();
  }
}

uint64_t sub_10006D7C8()
{
  sub_100030C4C();
  sub_100043668();
  v2 = *(v1 + 88);
  v3 = *v0;
  sub_10000FA6C();
  *v4 = v3;

  return _swift_task_switch(sub_10006D8B4, 0, 0);
}

uint64_t sub_10006D8B4()
{
  sub_100030C58();
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[4];
  [objc_opt_self() neSessionClearCaches];

  sub_100030C70();

  return v6();
}

uint64_t sub_10006D950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v5 = *(*(sub_100003020(&qword_1000A5A30, &qword_100082BD8) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000708BC(&qword_1000A40F8, &type metadata accessor for NotificationsActor.Actor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10006DA4C, v7, v6);
}

uint64_t sub_10006DA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100030C58();
  v13 = v12[4];
  v14 = *(v13 + qword_1000A5A48);
  ReferenceCountedLazy.increase()();
  v12[9] = v12[2];
  NotificationEnablementTracker.trackEnablement()();
  ReferenceCountedLazy.decrease()();
  v15 = (v13 + qword_1000A5A38);
  v16 = *(v13 + qword_1000A5A38 + 24);
  v17 = *(v13 + qword_1000A5A38 + 32);
  sub_1000032B8(v15, v16);
  sub_100030CE0();
  v12[10] = dispatch thunk of PrecipitationNotificationsManagerType.schedule()();
  v18 = async function pointer to Promise.resolveAsync()[1];
  v26 = swift_task_alloc();
  v12[11] = v26;
  *v26 = v12;
  v26[1] = sub_10006DB44;
  v27 = v12[5];

  return Promise.resolveAsync()(v27, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_10006DB44()
{
  sub_100030C4C();
  sub_100043668();
  v3 = v2;
  sub_10004AFD8();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_10000FA6C();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_10006DCC8;
  }

  else
  {
    v12 = v3[10];

    v9 = v3[7];
    v10 = v3[8];
    v11 = sub_10006DC48;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10006DC48()
{
  sub_100030C58();
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];

  v5 = sub_100030CE0();
  sub_10000F924(v5, v6);
  v7 = v0[5];

  sub_100030C70();

  return v8();
}

uint64_t sub_10006DCC8()
{
  sub_100030C58();
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[3];

  v6 = type metadata accessor for Date();
  sub_100070B78(v6);
  v7 = v0[5];

  sub_100030C70();

  return v8();
}

uint64_t sub_10006DD80(const void *a1, void *a2)
{
  v2[2] = a2;
  v5 = *(*(sub_100003020(&qword_1000A3800, &unk_100080860) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = swift_task_alloc();
  v2[5] = _Block_copy(a1);
  a2;
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_10006DE88;

  return NotificationsManager.schedule()();
}

uint64_t sub_10006DE88()
{
  sub_100030C58();
  sub_100043668();
  v2 = v1;
  sub_10004AFD8();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[4];
  v7 = v4[3];
  v8 = v4[2];
  v9 = *v0;
  sub_10000FA6C();
  *v10 = v9;

  v11 = sub_100070B54();
  sub_10000F924(v11, v12);
  v13 = type metadata accessor for Date();
  isa = 0;
  if (sub_100007374(v7, 1, v13) != 1)
  {
    v15 = v2[3];
    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_100030C40(v13);
    (*(v16 + 8))(v15, v13);
  }

  v18 = v2[4];
  v17 = v2[5];
  v19 = v2[3];
  (v17)[2](v17, isa);
  _Block_release(v17);

  sub_100030C70();

  return v20();
}

void sub_10006E04C(uint64_t a1, void (**a2)(void, void))
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1000706DC;
  *(v12 + 24) = v11;
  _Block_copy(a2);

  static Logger.notifications.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v4;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received proxy request for evaluating notification subscriptions", v15, 2u);
    v4 = v29;
  }

  v16 = *(v4 + 8);
  v16(v10, v3);
  if (WDWeatherAppIsInstalled())
  {
    sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
    v17 = sub_10006D068();
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.notifications.getter();
    sub_100003020(&qword_1000A5A30, &qword_100082BD8);
    type metadata accessor for NotificationsManager();
    firstly<A, B>(on:disposeOn:closure:)();

    v19 = swift_allocObject();
    v19[2] = sub_100070AA0;
    v19[3] = v12;
    v19[4] = v17;

    v20 = v17;
    v21 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    v22 = swift_allocObject();
    v22[2] = sub_100070AA0;
    v22[3] = v12;
    v22[4] = v20;

    v23 = v20;
    v24 = zalgo.getter();
    Promise.error(on:closure:)();
  }

  else
  {
    static Logger.notifications.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Weather app was uninstalled; rejecting evaluation request", v27, 2u);
    }

    v16(v8, v3);
    a2[2](a2, 0);
    [objc_opt_self() neSessionClearCaches];
  }

  _Block_release(a2);
}

void NotificationsManager.evaluate(with:)()
{
  sub_100030E38();
  v30 = sub_100070BB8();
  v2 = type metadata accessor for Logger();
  v3 = sub_100006FBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100070B14();
  __chkstk_darwin(v8);
  sub_100070AEC();
  v9 = swift_allocObject();
  sub_100070BD8(v9);
  static Logger.notifications.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_100030F7C();
    sub_100070B6C(v12);
    sub_100070B98(&_mh_execute_header, v13, v14, "Received proxy request for evaluating notification subscriptions");
    sub_100030D84();
  }

  v15 = *(v5 + 8);
  v16 = sub_100070B54();
  v15(v16);
  if (WDWeatherAppIsInstalled())
  {
    sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
    sub_100070B60();
    v17 = sub_10006D068();
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.notifications.getter();
    sub_100003020(&qword_1000A5A30, &qword_100082BD8);
    firstly<A, B>(on:disposeOn:closure:)();

    sub_100030E74();
    v19 = swift_allocObject();
    v19[2] = sub_1000700B4;
    v19[3] = v0;
    v19[4] = v17;

    v20 = v17;
    v21 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    sub_100030E74();
    v22 = swift_allocObject();
    v22[2] = sub_1000700B4;
    v22[3] = v0;
    v22[4] = v20;

    v23 = v20;
    v24 = zalgo.getter();
    Promise.error(on:closure:)();
  }

  else
  {
    static Logger.notifications.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = sub_100030F7C();
      sub_100070B6C(v27);
      sub_100070BF8(&_mh_execute_header, v28, v29, "Weather app was uninstalled; rejecting evaluation request");
      sub_100030D84();
    }

    (v15)(v1, v2);
    v31(0);
    [objc_opt_self() neSessionClearCaches];
  }

  sub_100030E08();
}

id sub_10006E86C(uint64_t a1, void (*a2)(void))
{
  a2();
  v2 = objc_opt_self();

  return [v2 neSessionClearCaches];
}

uint64_t sub_10006E8B8(uint64_t a1)
{
  v1 = (a1 + qword_1000A5A38);
  v2 = v1[4];
  sub_1000032B8(v1, v1[3]);
  return dispatch thunk of PrecipitationNotificationsManagerType.evaluate()();
}

void sub_10006E90C(uint64_t a1, void (*a2)(Class), uint64_t a3)
{
  v50 = a2;
  v49 = a3;
  v4 = type metadata accessor for Logger();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  v6 = __chkstk_darwin(v4);
  v44 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v40[-v8];
  v10 = sub_100003020(&qword_1000A5A30, &qword_100082BD8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v45 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v40[-v14];
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v40[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v23 = &v40[-v22];
  v48 = a1;
  sub_1000707FC(a1, v15, &qword_1000A5A30, &qword_100082BD8);
  if (sub_100007374(v15, 1, v16) == 1)
  {
    sub_100070860(v15, &qword_1000A3800, &unk_100080860);
    static Logger.notifications.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Did not receive new fetch schedule date after evaluation", v26, 2u);
    }

    (*(v46 + 8))(v9, v47);
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    v27 = v44;
    static Logger.notifications.getter();
    (*(v17 + 16))(v21, v23, v16);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v42 = v30;
      v43 = swift_slowAlloc();
      v51 = v43;
      *v30 = 136446210;
      sub_1000708BC(&qword_1000A4198, &type metadata accessor for Date);
      v41 = v29;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v34 = *(v17 + 8);
      v34(v21, v16);
      v35 = sub_10000D9FC(v31, v33, &v51);

      v36 = v42;
      *(v42 + 1) = v35;
      _os_log_impl(&_mh_execute_header, v28, v41, "Updated notification fetch schedule with date after evaluation: %{public}s", v36, 0xCu);
      sub_100006994(v43);

      (*(v46 + 8))(v44, v47);
      v34(v23, v16);
    }

    else
    {

      v37 = *(v17 + 8);
      v37(v21, v16);
      (*(v46 + 8))(v27, v47);
      v37(v23, v16);
    }
  }

  v38 = v45;
  sub_1000707FC(v48, v45, &qword_1000A5A30, &qword_100082BD8);
  if (sub_100007374(v38, 1, v16) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v17 + 8))(v38, v16);
  }

  v50(isa);
}

uint64_t NotificationsManager.unregister()()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_100070AD4();
  sub_1000708BC(v5, v6);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v8;
  v1[8] = v7;

  return _swift_task_switch(sub_10006EF84, v8, v7);
}

uint64_t sub_10006EF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[5];
  static Logger.notifications.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (sub_10004B070(v15))
  {
    *sub_100030F7C() = 0;
    sub_1000310B0(&_mh_execute_header, v16, v17, "Received request for unregistering all notification subscriptions");
    sub_10004B030();
  }

  v19 = v12[4];
  v18 = v12[5];
  v21 = v12[2];
  v20 = v12[3];

  v22 = *(v19 + 8);
  v23 = sub_100030CE0();
  v24(v23);
  sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
  sub_100070B60();
  v12[9] = sub_10006D068();
  v25 = *(v21 + qword_1000A5A38 + 32);
  sub_1000032B8((v21 + qword_1000A5A38), *(v21 + qword_1000A5A38 + 24));
  sub_100030CE0();
  v12[10] = dispatch thunk of PrecipitationNotificationsManagerType.unregister()();
  v26 = async function pointer to Promise.resolveAsync()[1];
  v27 = swift_task_alloc();
  v12[11] = v27;
  *v27 = v12;
  v27[1] = sub_10006F0EC;

  return Promise.resolveAsync()(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_10006F0EC()
{
  sub_100030C58();
  v2 = *v1;
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;
  v5 = *(v2 + 88);
  *v4 = *v1;

  v6 = *(v2 + 80);
  if (v0)
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_100070A7C;
  }

  else
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_10006F224;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10006F224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100030C4C();
  v13 = *(v12[2] + qword_1000A5A40);
  sub_100024BD4();
  v12[12] = v14;
  v15 = async function pointer to Promise.resolveAsync()[1];
  v16 = swift_task_alloc();
  v12[13] = v16;
  *v16 = v12;
  v16[1] = sub_10006F2CC;

  return Promise.resolveAsync()(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_10006F2CC()
{
  sub_100030C58();
  v2 = *v1;
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;
  v5 = *(v2 + 104);
  *v4 = *v1;

  v6 = *(v2 + 96);
  if (v0)
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_100070A34;
  }

  else
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_10006F404;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10006F404()
{
  sub_100030C4C();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  [objc_opt_self() neSessionClearCaches];

  sub_100030C70();

  return v3();
}

uint64_t sub_10006F4A8(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  sub_100070AEC();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return sub_100078554(a5, v8);
}

uint64_t sub_10006F514(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000708BC(&qword_1000A40F8, &type metadata accessor for NotificationsActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006F5D8, v4, v3);
}

uint64_t sub_10006F5D8()
{
  sub_100030C4C();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[5] = _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_10006F684;
  v6 = v0[3];

  return NotificationsManager.unregister()();
}

uint64_t sub_10006F684()
{
  sub_100030C4C();
  sub_100043668();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[3];
  v5 = *v0;
  sub_10000FA6C();
  *v6 = v5;

  v3[2](v3);
  _Block_release(v3);
  sub_100030C70();

  return v7();
}

void sub_10006F7A8(uint64_t a1, void (**a2)(void))
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10007063C;
  *(v12 + 24) = v11;
  _Block_copy(a2);

  static Logger.notifications.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = v4;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received request for validating channel subscriptions", v15, 2u);
    v4 = v26;
  }

  v16 = *(v4 + 8);
  v16(v10, v3);
  if (WDWeatherAppIsInstalled())
  {
    sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
    v17 = sub_10006D068();
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.notifications.getter();
    type metadata accessor for NotificationsManager();
    firstly<A, B>(on:disposeOn:closure:)();

    v19 = swift_allocObject();
    v19[2] = sub_100070A80;
    v19[3] = v12;
    v19[4] = v17;

    v20 = v17;
    v21 = zalgo.getter();
    Promise.always(on:closure:)();
  }

  else
  {
    static Logger.notifications.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Weather app was uninstalled; rejecting validation request", v24, 2u);
    }

    v16(v8, v3);
    a2[2](a2);
    [objc_opt_self() neSessionClearCaches];
  }

  _Block_release(a2);
}

void NotificationsManager.validate(with:)()
{
  sub_100030E38();
  v28 = sub_100070BB8();
  v2 = type metadata accessor for Logger();
  v3 = sub_100006FBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100070B14();
  __chkstk_darwin(v8);
  sub_100070AEC();
  v9 = swift_allocObject();
  sub_100070BD8(v9);
  static Logger.notifications.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_100030F7C();
    sub_100070B6C(v12);
    sub_100070B98(&_mh_execute_header, v13, v14, "Received request for validating channel subscriptions");
    sub_100030D84();
  }

  v15 = *(v5 + 8);
  v16 = sub_100070B54();
  v15(v16);
  if (WDWeatherAppIsInstalled())
  {
    sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
    sub_100070B60();
    v17 = sub_10006D068();
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    v18 = static OS_dispatch_queue.notifications.getter();
    firstly<A, B>(on:disposeOn:closure:)();

    sub_100030E74();
    v19 = swift_allocObject();
    v19[2] = sub_100070140;
    v19[3] = v0;
    v19[4] = v17;

    v20 = v17;
    v21 = zalgo.getter();
    Promise.always(on:closure:)();
  }

  else
  {
    static Logger.notifications.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_100030F7C();
      sub_100070B6C(v24);
      sub_100070BF8(&_mh_execute_header, v25, v26, "Weather app was uninstalled; rejecting validation request");
      sub_100030D84();
    }

    v27 = (v15)(v1, v2);
    v29(v27);
    [objc_opt_self() neSessionClearCaches];
  }

  sub_100030E08();
}

id sub_10006FEA4(void (*a1)(void))
{
  a1();
  v1 = objc_opt_self();

  return [v1 neSessionClearCaches];
}

void sub_10006FF40(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

uint64_t sub_10006FFB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006FFFC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_100030BFC(v7);
  *v8 = v9;
  v8[1] = sub_1000435A4;

  return sub_10006D950(a1, v3, v4, v6);
}

uint64_t sub_1000700E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_10007010C()
{
  v1 = *(v0 + 24);

  sub_100070AEC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t type metadata accessor for NotificationsManager()
{
  result = qword_1000A5A50;
  if (!qword_1000A5A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100070200(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100070A78;

  return v7(a1);
}

uint64_t sub_1000702F8()
{
  sub_100030C58();
  sub_100070B30();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  v3 = sub_100070AA8(v1);

  return v4(v3);
}

uint64_t sub_100070388(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10007047C;

  return v6(v2 + 32);
}

uint64_t sub_10007047C()
{
  sub_100030C4C();
  sub_100043668();
  v2 = v1;
  sub_10004AFD8();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  sub_10000FA6C();
  *v8 = v7;

  *v6 = *(v2 + 32);
  sub_100030C70();

  return v9();
}

uint64_t sub_100070574()
{
  sub_100030C58();
  sub_100070B30();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  v3 = sub_100070AA8(v1);

  return v4(v3);
}

uint64_t sub_100070604()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070648()
{
  sub_100030C58();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_100070AF8(v4);

  return v6(v5);
}

uint64_t sub_1000706F0()
{
  v1 = *(v0 + 24);

  sub_100030E74();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10007072C()
{
  _Block_release(*(v0 + 16));

  sub_100070AEC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100070768()
{
  sub_100030C58();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_100070AF8(v4);

  return v6(v5);
}

uint64_t sub_1000707FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003020(a3, a4);
  sub_100030C40(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100070860(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003020(a2, a3);
  sub_100030C40(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1000708BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100070904()
{
  sub_100030C58();
  sub_100070B30();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  v3 = sub_100070AA8(v1);

  return v4(v3);
}

uint64_t sub_100070994()
{
  sub_100030C58();
  sub_100070B30();
  v0 = swift_task_alloc();
  v1 = sub_100030BFC(v0);
  *v1 = v2;
  v3 = sub_100070AA8(v1);

  return v4(v3);
}

uint64_t sub_100070AA8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100070AF8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100070B78(uint64_t a1)
{

  return sub_100006BD4(v1, 1, 1, a1);
}

void sub_100070B98(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_100070BB8()
{

  return swift_getObjectType();
}

uint64_t sub_100070BD8(uint64_t a1)
{
  *(v3 - 88) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

void sub_100070BF8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void *sub_100070C1C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for APSEnvironment();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC8weatherd20APSConnectionManager_lock);
  UnfairLock.lock()();
  v13 = *(v1 + OBJC_IVAR____TtC8weatherd20APSConnectionManager__connection);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v33 = v12;
    v34 = v2;
    v35 = v3;
    v32 = OBJC_IVAR____TtC8weatherd20APSConnectionManager__connection;
    static Settings.WeatherEnvironment.apsEnvironment.getter();
    sub_100073634(&qword_1000A5B68, v15, type metadata accessor for APSConnectionManager);
    Configurable.setting<A>(_:)();

    v16 = APSEnvironment.rawValue.getter();
    v18 = v17;
    (*(v8 + 8))(v11, v7);
    static Logger.notifications.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = v22;
      *v21 = 136315138;

      v23 = v16;
      v24 = sub_10000D9FC(v16, v18, &v36);

      *(v21 + 4) = v24;
      v16 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Setting up APSConnction with environment %s", v21, 0xCu);
      sub_100006994(v22);
    }

    (*(v35 + 8))(v6, v34);
    sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
    v25 = static OS_dispatch_queue.notifications.getter();
    v26 = objc_allocWithZone(APSConnection);
    v27 = sub_1000730EC(v16, v18, 0xD000000000000015, 0x8000000100085FD0, v25);
    v13 = v27;
    if (v27)
    {
      [v27 setDelegate:v1];
      sub_100073264(&off_10009AF80, v13);
      v28 = *(v1 + v32);
      *(v1 + v32) = v13;
      v29 = v13;
    }
  }

  UnfairLock.unlock()();
  return v13;
}

void sub_100070FCC()
{
  sub_100030E38();
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for PromiseDeduperFlags();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  sub_10000E970();
  v4 = type metadata accessor for UnfairLock.Options();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10003C888();
  v6 = OBJC_IVAR____TtC8weatherd20APSConnectionManager_lock;
  static UnfairLock.Options.dataSynchronization.getter();
  v7 = type metadata accessor for UnfairLock();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v0[v6] = UnfairLock.init(options:)();
  *&v0[OBJC_IVAR____TtC8weatherd20APSConnectionManager_observers] = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtC8weatherd20APSConnectionManager_deduper;
  v15 = _swiftEmptyArrayStorage;
  sub_100073634(&qword_1000A5BA0, 255, &type metadata accessor for PromiseDeduperFlags);
  sub_100003020(&qword_1000A4E28, &qword_100082DA0);
  sub_1000626C0(&qword_1000A5BB0, &qword_1000A4E28, &qword_100082DA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = sub_100003020(&qword_1000A5BB8, &qword_100082DA8);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v0[v10] = PromiseDeduper.init(options:)();
  *&v0[OBJC_IVAR____TtC8weatherd20APSConnectionManager__connection] = 0;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "init");
  sub_100030E08();
}

uint64_t sub_100071274()
{
  swift_getObjectType();

  return Configurable.setting<A>(_:)();
}

uint64_t sub_1000712CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:defaultValue:)(a1, a2, ObjectType, a6);
}

uint64_t sub_100071334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:_:)(a1, a2, a3, ObjectType, a7);
}

uint64_t sub_1000713A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:defaultValue:_:)(a1, a2, a3, a4, ObjectType, a8);
}

void sub_100071424(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = sub_100006FBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_1000188B0();
  v36 = v9;
  __chkstk_darwin(v10);
  sub_1000737A4();
  static Logger.notifications.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v35 = a1;
  if (os_log_type_enabled(v11, v12))
  {
    sub_10007378C();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136446210;
    v15 = Array.description.getter();
    v17 = sub_10000D9FC(v15, v16, &v37);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Attempting to subscribe to channels %{public}s", v13, 0xCu);
    sub_100006994(v14);
    sub_100073780();

    sub_100073780();
  }

  else
  {
  }

  v18 = *(v6 + 8);
  v18(v1, v3);
  v19 = sub_100070C1C();
  if (!v19)
  {
    sub_1000732D0();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    return;
  }

  v20 = v19;
  v21 = sub_100073324(v19);
  sub_100003020(&qword_1000A3B60, &unk_100082250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100081610;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000100084790;
  if (v21)
  {
    v23 = sub_10002AB80(v21, inited);

    swift_setDeallocating();
    sub_100073220();
    if (v23)
    {
      goto LABEL_13;
    }
  }

  else
  {
    swift_setDeallocating();
    sub_100073220();
  }

  static Logger.notifications.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v25, v26))
  {
    sub_100073798();
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "APSConnection configuration error: com.apple.weather is not an enabled topic", v27, 2u);
    sub_100073780();
  }

  v18(v36, v3);
LABEL_13:
  v28 = *(v35 + 16);
  v29 = _swiftEmptyArrayStorage;
  if (v28)
  {
    v37 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v30 = (v35 + 40);
    while (1)
    {
      v31 = *(v30 - 1);
      v32 = *v30;
      v33 = objc_allocWithZone(PKPublicChannel);
      swift_bridgeObjectRetain_n();
      if (!sub_100073198(v31, v32))
      {
        break;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v34 = v37[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v30 += 2;
      if (!--v28)
      {
        v29 = v37;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_10007337C(v29, 0xD000000000000011, 0x8000000100084790, v20, &selRef_subscribeToChannels_forTopic_);
  }
}

void sub_100071818(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = sub_100006FBC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10003C888();
  static Logger.notifications.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    sub_10007378C();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136446210;
    v13 = Array.description.getter();
    v26 = v3;
    v15 = sub_10000D9FC(v13, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Attempting to unsubscribe from channels %{public}s", v11, 0xCu);
    sub_100006994(v12);
    sub_100073780();

    sub_100073780();

    (*(v6 + 8))(v1, v26);
  }

  else
  {

    (*(v6 + 8))(v1, v3);
  }

  v16 = sub_100070C1C();
  if (v16)
  {
    v17 = v16;
    v18 = *(a1 + 16);
    v19 = _swiftEmptyArrayStorage;
    if (v18)
    {
      v27 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v20 = (a1 + 40);
      while (1)
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        v23 = objc_allocWithZone(PKPublicChannel);
        swift_bridgeObjectRetain_n();
        if (!sub_100073198(v21, v22))
        {
          break;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v24 = v27[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v20 += 2;
        if (!--v18)
        {
          v19 = v27;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
      sub_10007337C(v19, 0xD000000000000011, 0x8000000100084790, v17, &selRef_unsubscribeFromChannels_forTopic_);
    }
  }

  else
  {
    sub_1000732D0();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }
}

uint64_t sub_100071AF0()
{
  v1 = type metadata accessor for Logger();
  v2 = sub_100006FBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10003C888();
  static Logger.notifications.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    sub_100073798();
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetching subscribed channels", v9, 2u);
    sub_100073780();
  }

  v10 = (*(v4 + 8))(v0, v1);
  v11 = *(v0 + OBJC_IVAR____TtC8weatherd20APSConnectionManager_deduper);
  __chkstk_darwin(v10);
  return PromiseDeduper.promise(key:createBlock:)();
}

uint64_t sub_100071C7C()
{
  v0 = sub_100003020(&qword_1000A5B80, &unk_100082D90);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return Promise.init(resolver:)();
}

void sub_100071CE4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_100070C1C();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = sub_100073480;
    v11[5] = v8;
    v14[4] = sub_1000734F8;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1000720BC;
    v14[3] = &unk_10009C950;
    v12 = _Block_copy(v14);

    sub_10007351C(0xD000000000000011, 0x8000000100084790, v12, v10);
    _Block_release(v12);
  }

  else
  {

    sub_1000732D0();
    swift_allocError();
    *v13 = 0;
    a3();
  }
}

void sub_100071E94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void *))
{
  if (a2)
  {
    sub_1000732D0();
    v7 = swift_allocError();
    *v8 = a2;
    swift_errorRetain();
    swift_errorRetain();
    a3(v7);
  }

  else if (a1)
  {
    v10 = sub_100037A1C(a1);
    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    while (v10 != v11)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v13 = *(a1 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v16 = sub_100073590(v13);
      v18 = v17;

      ++v11;
      if (v18)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = v12[2];
          sub_10005B5C4();
          v12 = v22;
        }

        v19 = v12[2];
        if (v19 >= v12[3] >> 1)
        {
          sub_10005B5C4();
          v12 = v23;
        }

        v12[2] = v19 + 1;
        v20 = &v12[2 * v19];
        v20[4] = v16;
        v20[5] = v18;
        v11 = v15;
      }
    }

    a5(v12);
  }

  else
  {
    a5(0);
  }
}

uint64_t sub_1000720BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100030944(0, &qword_1000A5B60, PKPublicChannel_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_100072160()
{
  swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v2 = sub_100006FBC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10003C888();
  static Logger.notifications.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    sub_100073798();
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unsubscribing from all subscribed channels", v9, 2u);
    sub_100073780();
  }

  (*(v4 + 8))(v0, v1);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A5BC0, &unk_100082DB0);
  firstly<A, B>(on:disposeOn:closure:)();

  v11 = static OS_dispatch_queue.notifications.getter();
  v12 = Promise.then<A, B>(on:disposeOn:closure:)();

  return v12;
}

void sub_100072370(uint64_t *a1)
{
  v2 = *a1;
  if (!v2 || (sub_100071818(v2), !v1))
  {
    v3 = sub_100003020(&qword_1000A37D0, &qword_100080838);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    Promise.init(value:)();
  }
}

void sub_1000723D8()
{
  sub_100030E38();
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = sub_100006FBC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000E970();
  v10 = v9 - v8;
  v11 = *(v0 + OBJC_IVAR____TtC8weatherd20APSConnectionManager_lock);
  UnfairLock.lock()();
  v12 = OBJC_IVAR____TtC8weatherd20APSConnectionManager__connection;
  v13 = *(v0 + OBJC_IVAR____TtC8weatherd20APSConnectionManager__connection);
  if (v13)
  {
    v14 = v13;
    static Logger.notifications.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      sub_100073798();
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Invalidating APSConnection", v17, 2u);
      sub_100073780();
    }

    (*(v5 + 8))(v10, v2);
    sub_100073264(_swiftEmptyArrayStorage, v14);
    [v14 setDelegate:0];
    [v14 shutdown];

    v18 = *(v1 + v12);
    *(v1 + v12) = 0;
  }

  UnfairLock.unlock()();
  sub_100030E08();
}

void sub_10007260C()
{
  sub_100030E38();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100006FBC(v4);
  v67 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10000E970();
  v65 = v10 - v9;
  v66 = type metadata accessor for DispatchQoS();
  v11 = sub_100006FBC(v66);
  v64 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_10000E970();
  v63 = v16 - v15;
  v17 = type metadata accessor for APSMessage();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  sub_10000E970();
  v21 = (v20 - v19);
  v22 = type metadata accessor for Logger();
  v23 = sub_100006FBC(v22);
  v68 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_1000188B0();
  v60 = v27;
  __chkstk_darwin(v28);
  sub_1000737A4();
  static Logger.notifications.getter();
  v29 = v3;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v59 = v22;
    v32 = v4;
    v33 = v21;
    sub_10007378C();
    v34 = swift_slowAlloc();
    *v34 = 134349056;
    if (!v3)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v35 = v34;
    *(v34 + 4) = [v29 identifier];

    _os_log_impl(&_mh_execute_header, v30, v31, "Received incoming message: %{public}lu", v35, 0xCu);
    sub_100073780();

    v21 = v33;
    v4 = v32;
    v22 = v59;
  }

  else
  {

    v30 = v29;
  }

  v36 = *(v68 + 8);
  v36(v0, v22);
  v37 = *(v0 + OBJC_IVAR____TtC8weatherd20APSConnectionManager_lock);
  UnfairLock.lock()();
  v38 = OBJC_IVAR____TtC8weatherd20APSConnectionManager_observers;
  swift_beginAccess();
  v39 = *(v1 + v38);

  UnfairLock.unlock()();
  if (!v3)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_100073590(v29);
  v62 = v4;
  if (v40)
  {
  }

  else
  {
    static Logger.notifications.getter();
    v41 = v29;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      sub_10007378C();
      v44 = v21;
      v45 = swift_slowAlloc();
      *v45 = 134349056;
      *(v45 + 4) = [v41 identifier];

      _os_log_impl(&_mh_execute_header, v42, v43, "Received incoming message without channel identifier: %{public}lu", v45, 0xCu);
      v21 = v44;
      sub_100073780();
    }

    else
    {

      v42 = v41;
    }

    v36(v60, v22);
  }

  v69 = v21;
  sub_100007064(v29, v21);
  v46 = dispatch_group_create();
  sub_100030944(0, &unk_1000A5B90, WDTransaction_ptr);
  v61 = sub_10006D068();
  v47 = *(v39 + 16);
  if (v47)
  {
    v48 = (v39 + 40);
    do
    {
      v49 = *(v48 - 1);
      v50 = *v48;
      swift_unknownObjectRetain();
      dispatch_group_enter(v46);
      ObjectType = swift_getObjectType();
      v52 = swift_allocObject();
      *(v52 + 16) = v46;
      v53 = *(v50 + 8);
      v54 = v46;
      v53(v69, sub_10007362C, v52, ObjectType, v50);
      swift_unknownObjectRelease();

      v48 += 2;
      --v47;
    }

    while (v47);
  }

  [objc_opt_self() neSessionClearCaches];
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v55 = static OS_dispatch_queue.notifications.getter();
  v56 = swift_allocObject();
  *(v56 + 16) = v61;
  v70[4] = nullsub_1;
  v70[5] = v56;
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 1107296256;
  v70[2] = sub_100002FA4;
  v70[3] = &unk_10009C9C8;
  v57 = _Block_copy(v70);
  v58 = v61;
  static DispatchQoS.unspecified.getter();
  sub_100073634(&qword_1000A4B70, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003020(&unk_1000A32B0, &qword_100080350);
  sub_1000626C0(&qword_1000A4B80, &unk_1000A32B0, &qword_100080350);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v57);

  (*(v67 + 8))(v65, v62);
  (*(v64 + 8))(v63, v66);
  sub_10006A28C(v69);

  sub_100030E08();
}

void sub_100072D30()
{
  sub_100030E38();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = sub_100006FBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10003C888();
  static Logger.notifications.getter();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v40 = v4;
    sub_10007378C();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42 = v13;
    *v12 = 136446210;
    if (!v3)
    {
      goto LABEL_23;
    }

    v14 = v13;

    sub_100030944(0, &qword_1000A5B88, APSChannelSubscriptionFailure_ptr);
    v15 = Array.description.getter();
    v17 = sub_10000D9FC(v15, v16, &v42);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to subscribe to channels with failures: %{public}s", v12, 0xCu);
    sub_100006994(v14);
    sub_100073780();

    sub_100073780();

    (*(v7 + 8))(v0, v40);
  }

  else
  {

    (*(v7 + 8))(v0, v4);
  }

  v18 = v3;
  v19 = *(v0 + OBJC_IVAR____TtC8weatherd20APSConnectionManager_lock);
  UnfairLock.lock()();
  v20 = OBJC_IVAR____TtC8weatherd20APSConnectionManager_observers;
  swift_beginAccess();
  v21 = *(v1 + v20);

  UnfairLock.unlock()();
  if (v18)
  {
    v22 = v18;
    v41 = sub_100037A1C(v18);
    if (!v41)
    {
LABEL_18:

      sub_100030E08();
      return;
    }

    v23 = 0;
    v24 = *(v21 + 16);
    v37 = v18 + 32;
    v38 = v18;
    v39 = v18 & 0xC000000000000001;
    while (2)
    {
      sub_1000731FC(v23, v39 == 0, v22);
      if (v39)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v37 + 8 * v23);
      }

      v26 = v25;
      if (!__OFADD__(v23++, 1))
      {
        v28 = 0;
        v29 = (v21 + 40);
        while (v24 != v28)
        {
          if (v28 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v30 = *(v29 - 1);
          v31 = *v29;
          swift_unknownObjectRetain();
          v32 = sub_100073590(v26);
          if (!v33)
          {
            goto LABEL_21;
          }

          v34 = v32;
          v35 = v33;
          ++v28;
          ObjectType = swift_getObjectType();
          (*(v31 + 16))(v34, v35, ObjectType, v31);
          swift_unknownObjectRelease();

          v29 += 2;
        }

        v22 = v38;
        if (v23 != v41)
        {
          continue;
        }

        goto LABEL_18;
      }

      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

id sub_1000730EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = String._bridgeToObjectiveC()();

LABEL_6:
  v10 = [v5 initWithEnvironmentName:v8 namedDelegatePort:v9 queue:a5];

  return v10;
}

id sub_100073198(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithChannelID:v3];

  return v4;
}

unint64_t sub_1000731FC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100073220()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

void sub_100073264(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 _setEnabledTopics:isa];
}

unint64_t sub_1000732D0()
{
  result = qword_1000A5B58;
  if (!qword_1000A5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5B58);
  }

  return result;
}

uint64_t sub_100073324(void *a1)
{
  v1 = [a1 enabledTopics];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10007337C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_100030944(0, &qword_1000A5B60, PKPublicChannel_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = String._bridgeToObjectiveC()();

  [a4 *a5];
}

uint64_t sub_100073448()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100073480(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1000734B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100073504(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10007351C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 getRegisteredChannelsForTopic:v6 withCompletion:a3];
}

uint64_t sub_100073590(void *a1)
{
  v1 = [a1 channelID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000735F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100073634(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100073688(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000736D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10007372C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100073744(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

id sub_1000737B8(uint64_t *a1)
{
  v2 = *(*(sub_100003020(&qword_1000A3800, &unk_100080860) - 8) + 64);
  sub_100018920();
  __chkstk_darwin(v3);
  v5 = &v41 - v4;
  v6 = type metadata accessor for Date();
  v7 = sub_100006FBC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = *a1;
  v16 = a1[1];
  v17 = v14;
  v18 = String._bridgeToObjectiveC()();
  sub_1000759A8(v18, "setTitle:");

  v19 = a1[2];
  v20 = a1[3];
  v21 = String._bridgeToObjectiveC()();
  sub_1000759A8(v21, "setSubtitle:");

  v22 = a1[4];
  v23 = a1[5];
  v24 = String._bridgeToObjectiveC()();
  sub_1000759A8(v24, "setBody:");

  v25 = a1[6];
  v26 = a1[7];
  v27 = String._bridgeToObjectiveC()();
  sub_1000759A8(v27, "setThreadIdentifier:");

  if (a1[8])
  {
    v28 = a1[8];
  }

  else
  {
    v28 = Dictionary.init(dictionaryLiteral:)();
  }

  sub_100074AA0(v28);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1000759A8(v30, "setUserInfo:");

  if (*(a1 + 72))
  {
    v31 = 3;
  }

  else
  {
    v31 = 2;
  }

  [v17 setInterruptionLevel:v31];
  v32 = [objc_opt_self() defaultSound];
  sub_1000759A8(v32, "setSound:");

  v33 = String._bridgeToObjectiveC()();
  sub_1000759A8(v33, "setCategoryIdentifier:");

  v34 = type metadata accessor for SevereNotificationContent();
  sub_10000F994(a1 + *(v34 + 40), v5);
  if (sub_100007374(v5, 1, v6) == 1)
  {
    v35 = sub_10007595C();
    sub_100075278(v35, v36);
    sub_100018858(v5, &qword_1000A3800, &unk_100080860);
  }

  else
  {
    (*(v9 + 32))(v13, v5, v6);
    v37 = Date._bridgeToObjectiveC()().super.isa;
    [v17 setExpirationDate:v37];

    (*(v9 + 8))(v13, v6);
    v38 = sub_10007595C();
    sub_100075278(v38, v39);
  }

  return v17;
}

uint64_t sub_100073B18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = *(*(sub_100003020(&qword_1000A3800, &unk_100080860) - 8) + 64);
  sub_100018920();
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v8 = sub_100003020(&qword_1000A5BD0, &qword_100082E90);
  sub_100006FBC(v8);
  v10 = *(v9 + 64);
  sub_100018920();
  __chkstk_darwin(v11);
  v32 = type metadata accessor for SevereNotificationContent();
  v12 = sub_100018904(v32);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v33 = a1;
  sub_1000032B8(a1, v18);
  sub_1000752D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006994(v33);
  }

  v30 = v7;
  v39 = 0;
  sub_100075988();
  *v16 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v16 + 1) = v19;
  v38 = 1;
  sub_100075988();
  *(v16 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v16 + 3) = v20;
  v37 = 2;
  sub_100075988();
  *(v16 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v16 + 5) = v21;
  v36 = 3;
  sub_100075988();
  *(v16 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v16 + 7) = v22;
  v35 = 4;
  sub_100075988();
  v16[72] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  type metadata accessor for Date();
  v34 = 7;
  sub_100007EE4(&qword_1000A36C8);
  v23 = v30;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10000F924(v23, &v16[*(v32 + 40)]);
  v24 = sub_100073F5C();
  v25 = sub_100075998();
  v26(v25);
  *(v16 + 8) = v24;
  sub_100075324(v16, v31, type metadata accessor for SevereNotificationContent);
  sub_100006994(v33);
  v27 = sub_10007595C();
  return sub_100075278(v27, v28);
}

uint64_t sub_100073F5C()
{
  v1 = Dictionary.init(dictionaryLiteral:)();
  LOBYTE(v19) = 5;
  sub_100003020(&qword_1000A5BD0, &qword_100082E90);
  v2 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v0)
  {
  }

  else
  {
    if (v3)
    {
      v22 = &type metadata for String;
      *&v21 = v2;
      *(&v21 + 1) = v3;
      sub_100018804(&v21, &v19);
      swift_isUniquelyReferenced_nonNull_native();
      v23 = v1;
      sub_10002C1A4();
      v1 = v23;
    }

    else
    {
      v4 = sub_100074DF4(0x6E6F697461636F4CLL, 0xE800000000000000);
      if (v5)
      {
        v6 = v4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v1;
        v8 = *(v1 + 24);
        sub_100003020(&qword_1000A3E50, &qword_100080CF0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
        v1 = v23;
        v9 = *(*(v23 + 48) + 16 * v6 + 8);

        sub_100018804((*(v23 + 56) + 32 * v6), &v19);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
      }

      sub_100018858(&v19, &unk_1000A3880, &qword_1000808A8);
    }

    LOBYTE(v19) = 6;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v11)
    {
      v22 = &type metadata for String;
      *&v21 = v10;
      *(&v21 + 1) = v11;
      sub_100018804(&v21, &v19);
      swift_isUniquelyReferenced_nonNull_native();
      v23 = v1;
      sub_10002C1A4();
      return v23;
    }

    else
    {
      v13 = sub_100074DF4(0x55736C6961746544, 0xEA00000000004C52);
      if (v14)
      {
        v15 = v13;
        v16 = swift_isUniquelyReferenced_nonNull_native();
        v23 = v1;
        v17 = *(v1 + 24);
        sub_100003020(&qword_1000A3E50, &qword_100080CF0);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v16, v17);
        v1 = v23;
        v18 = *(*(v23 + 48) + 16 * v15 + 8);

        sub_100018804((*(v1 + 56) + 32 * v15), &v19);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
      }

      sub_100018858(&v19, &unk_1000A3880, &qword_1000808A8);
    }
  }

  return v1;
}

uint64_t sub_100074274(void *a1)
{
  v3 = v1;
  v5 = sub_100003020(&qword_1000A5BE0, &qword_100082E98);
  sub_100006FBC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100018920();
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = a1[4];
  sub_1000032B8(a1, a1[3]);
  sub_1000752D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v30[0]) = 0;
  sub_100075978();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v7 + 8))(v12, v5);
  }

  v16 = v3[2];
  v17 = v3[3];
  LOBYTE(v30[0]) = 1;
  sub_100075978();
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = v3[4];
  v19 = v3[5];
  LOBYTE(v30[0]) = 2;
  sub_100075978();
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = v3[6];
  v21 = v3[7];
  LOBYTE(v30[0]) = 3;
  sub_100075978();
  KeyedEncodingContainer.encode(_:forKey:)();
  v22 = *(v3 + 72);
  LOBYTE(v30[0]) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v23 = *(type metadata accessor for SevereNotificationContent() + 40);
  LOBYTE(v30[0]) = 7;
  sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100075384();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v24 = v3[8];
  if (!v24)
  {
    return (*(v7 + 8))(v12, v5);
  }

  sub_1000136D8(0x6E6F697461636F4CLL, 0xE800000000000000, v24, &v28);
  if (v29)
  {
    sub_100018804(&v28, v30);
    sub_10000DF6C(v30, &v28);
    if (sub_1000759C0())
    {
      LOBYTE(v28) = 5;
      sub_100075978();
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      sub_100006994(v30);
    }

    else
    {
      sub_100006994(v30);
    }
  }

  else
  {
    sub_100018858(&v28, &unk_1000A3880, &qword_1000808A8);
  }

  v25 = sub_1000136D8(0x55736C6961746544, 0xEA00000000004C52, v24, &v28);
  if (v29)
  {
    sub_100018804(&v28, v30);
    sub_10000DF6C(v30, &v28);
    if (sub_1000759C0())
    {
      LOBYTE(v28) = 6;
      sub_100075978();
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    }

    sub_100006994(v30);
    return (*(v7 + 8))(v12, v5);
  }

  (*(v7 + 8))(v12, v5, v25);
  return sub_100018858(&v28, &unk_1000A3880, &qword_1000808A8);
}

uint64_t sub_1000745F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 2036625250 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000100086030 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C61636974697263 && a2 == 0xE800000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x55736C6961746564 && a2 == 0xEA00000000004C52;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6974617269707865 && a2 == 0xEE00656D69546E6FLL)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100074894(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 2036625250;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6C61636974697263;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x55736C6961746564;
      break;
    case 7:
      result = 0x6974617269707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000749A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000745F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000749D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10007488C();
  *a1 = result;
  return result;
}

uint64_t sub_1000749F8(uint64_t a1)
{
  v2 = sub_1000752D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100074A34(uint64_t a1)
{
  v2 = sub_1000752D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100074AA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003020(&qword_1000A5BC8, &qword_100082E88);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_10000DF6C(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100018804(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100018804(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100018804(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_100018804(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SevereNotificationContent()
{
  result = qword_1000A5C48;
  if (!qword_1000A5C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100074DB0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100074ED8(a1, v4);
}

unint64_t sub_100074DF4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100074FF8(a1, a2, v6);
}

unint64_t sub_100074E6C(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  ResolvedPredictedLocation.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000750AC(a1, v4);
}

unint64_t sub_100074ED8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100074F9C(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100014EB0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100074FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000750AC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ResolvedPredictedLocation();
  v6 = *(*(v5 - 1) + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_100075324(*(v2 + 48) + v13 * v11, v9, type metadata accessor for ResolvedPredictedLocation);
      if (static Location.== infix(_:_:)() & 1) != 0 && *&v9[v5[5]] == *(a1 + v5[5]) && (v14 = v5[6], (static Date.== infix(_:_:)()))
      {
        v15 = v5[7];
        v16 = static Date.== infix(_:_:)();
        sub_100075278(v9, type metadata accessor for ResolvedPredictedLocation);
        if (v16)
        {
          return v11;
        }
      }

      else
      {
        sub_100075278(v9, type metadata accessor for ResolvedPredictedLocation);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_100075278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100018904(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1000752D0()
{
  result = qword_1000A5BD8;
  if (!qword_1000A5BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BD8);
  }

  return result;
}

uint64_t sub_100075324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100018904(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100075384()
{
  result = qword_1000A5BE8;
  if (!qword_1000A5BE8)
  {
    sub_10000325C(&qword_1000A3800, &unk_100080860);
    sub_100007EE4(&qword_1000A36D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5BE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SevereNotificationContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SevereNotificationContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100075578);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000755C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003020(&qword_1000A3800, &unk_100080860);
    v9 = a1 + *(a3 + 40);

    return sub_100007374(v9, a2, v8);
  }
}

uint64_t sub_10007566C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003020(&qword_1000A3800, &unk_100080860);
    v8 = v5 + *(a4 + 40);

    return sub_100006BD4(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000756F8()
{
  sub_100075798();
  if (v0 <= 0x3F)
  {
    sub_1000757FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100075798()
{
  if (!qword_1000A5C58)
  {
    sub_10000325C(&qword_1000A5C60, &qword_100082ED0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5C58);
    }
  }
}

void sub_1000757FC()
{
  if (!qword_1000A5C68)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A5C68);
    }
  }
}

unint64_t sub_100075858()
{
  result = qword_1000A5CB0;
  if (!qword_1000A5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5CB0);
  }

  return result;
}

unint64_t sub_1000758B0()
{
  result = qword_1000A5CB8;
  if (!qword_1000A5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5CB8);
  }

  return result;
}

unint64_t sub_100075908()
{
  result = qword_1000A5CC0;
  if (!qword_1000A5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5CC0);
  }

  return result;
}

id sub_1000759A8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1000759C0()
{

  return swift_dynamicCast();
}

uint64_t sub_100075B40(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return sub_100002FE8(v3, a2);
}

uint64_t sub_100075BFC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10004E58C(v3, a2);
  sub_100002FE8(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100075C9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100002FE8(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100075D5C()
{
  v117 = type metadata accessor for Urgency();
  v1 = sub_100006FBC(v117);
  v107 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_1000188C4();
  v106 = v5;
  v6 = sub_100003020(&qword_1000A3E28, &qword_1000817A0);
  v7 = sub_100006FF0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1000188B0();
  v115 = v10;
  sub_100030F24();
  __chkstk_darwin(v11);
  sub_100018938();
  v121 = v12;
  sub_1000188E8();
  v13 = type metadata accessor for Severity();
  v14 = sub_100006FBC(v13);
  v113 = v15;
  v114 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_1000188C4();
  v112 = v18;
  sub_1000188E8();
  v111 = type metadata accessor for Importance();
  v19 = sub_100006FBC(v111);
  v105 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  sub_1000188C4();
  v104 = v23;
  v24 = sub_100003020(&qword_1000A4758, &qword_100081798);
  v25 = sub_100006FF0(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v28);
  sub_100018938();
  v120 = v29;
  v30 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v31 = sub_100006FF0(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v34);
  sub_1000782A0();
  v119 = v35;
  sub_100030F24();
  __chkstk_darwin(v36);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v37);
  sub_100018938();
  v109 = v38;
  sub_1000188E8();
  v39 = type metadata accessor for Date();
  v40 = sub_100006FBC(v39);
  v118 = v41;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40);
  sub_10000E970();
  v44 = type metadata accessor for Certainty();
  v45 = sub_100006FBC(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v45);
  sub_10000E970();
  v52 = v51 - v50;
  v53 = sub_100003020(&qword_1000A4768, &unk_1000817B0);
  v54 = sub_100006FF0(v53);
  v56 = *(v55 + 64);
  __chkstk_darwin(v54);
  sub_100015754();
  v59 = v57 - v58;
  __chkstk_darwin(v60);
  v62 = &v104 - v61;
  Hasher.init()();
  v116 = v0;
  WeatherAlert.certainty.getter();
  sub_10003C7D0(v62, v59, &qword_1000A4768, &unk_1000817B0);
  sub_100078348(v59);
  if (v63)
  {
    sub_1000783EC();
  }

  else
  {
    (*(v47 + 32))(v52, v59, v44);
    sub_100078404();
    sub_10007820C(&qword_1000A5CC8, &type metadata accessor for Certainty);
    sub_100078428();
    dispatch thunk of Hashable.hash(into:)();
    (*(v47 + 8))(v52, v44);
  }

  sub_100018858(v62, &qword_1000A4768, &unk_1000817B0);
  WeatherAlert.countryCode.getter();
  v64 = v109;
  if (v65)
  {
    sub_100078404();
    String.hash(into:)();
  }

  else
  {
    sub_1000783EC();
  }

  WeatherAlert.description.getter();
  String.hash(into:)();

  WeatherAlert.effectiveTime.getter();
  sub_10007826C();
  sub_10007820C(v66, v67);
  sub_1000782AC();
  v68 = *(v118 + 8);
  v69 = sub_100078320();
  v68(v69);
  WeatherAlert.expireTime.getter();
  sub_1000782AC();
  v70 = sub_100078320();
  v68(v70);
  WeatherAlert.eventEndTime.getter();
  sub_10003C7D0(v64, v108, &qword_1000A3800, &unk_100080860);
  v71 = sub_100078478();
  if (sub_100007374(v71, v72, v39) == 1)
  {
    sub_1000783EC();
  }

  else
  {
    sub_100078460();
    sub_10007846C();
    v73();
    sub_100078404();
    sub_1000782AC();
    v74 = sub_100078320();
    v68(v74);
  }

  sub_100018858(v64, &qword_1000A3800, &unk_100080860);
  WeatherAlert.eventOnsetTime.getter();
  sub_1000783A0();
  sub_10003C7D0(v75, v76, v77, &unk_100080860);
  v78 = sub_100078478();
  if (sub_100007374(v78, v79, v39) == 1)
  {
    sub_1000783EC();
  }

  else
  {
    v80 = *(v118 + 32);
    sub_10007846C();
    v81();
    sub_100078404();
    sub_1000782AC();
    v82 = sub_100078320();
    v68(v82);
  }

  v83 = v111;
  sub_100018858(v119, &qword_1000A3800, &unk_100080860);
  v84 = v120;
  WeatherAlert.importance.getter();
  sub_10003C7D0(v84, v110, &qword_1000A4758, &qword_100081798);
  v85 = sub_100078478();
  if (sub_100007374(v85, v86, v83) == 1)
  {
    sub_1000783EC();
  }

  else
  {
    v87 = v105;
    v88 = *(v105 + 32);
    v89 = v104;
    sub_1000783A0();
    v90();
    sub_100078404();
    sub_1000782E8();
    sub_10007820C(v91, v92);
    sub_100078428();
    dispatch thunk of Hashable.hash(into:)();
    (*(v87 + 8))(v89, v83);
  }

  sub_100018858(v120, &qword_1000A4758, &qword_100081798);
  WeatherAlert.issuedTime.getter();
  sub_1000782AC();
  v93 = sub_100078320();
  v68(v93);
  v94 = v112;
  WeatherAlert.severity.getter();
  sub_10007820C(&qword_1000A5CD8, &type metadata accessor for Severity);
  sub_100078428();
  v95 = v114;
  dispatch thunk of Hashable.hash(into:)();
  (*(v113 + 8))(v94, v95);
  WeatherAlert.source.getter();
  String.hash(into:)();

  v96 = v121;
  WeatherAlert.urgency.getter();
  sub_10003C7D0(v96, v115, &qword_1000A3E28, &qword_1000817A0);
  v97 = sub_100078478();
  v98 = v117;
  if (sub_100007374(v97, v99, v117) == 1)
  {
    sub_1000783EC();
  }

  else
  {
    v100 = v107;
    sub_100078460();
    v101 = v106;
    sub_10007846C();
    v102();
    sub_100078404();
    sub_10007820C(&qword_1000A5CE0, &type metadata accessor for Urgency);
    sub_100078428();
    dispatch thunk of Hashable.hash(into:)();
    (*(v100 + 8))(v101, v98);
  }

  sub_100018858(v121, &qword_1000A3E28, &qword_1000817A0);
  v122 = Hasher.finalize()();
  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1000766F0(uint64_t a1)
{
  v262 = a1;
  v1 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v2 = sub_100006FF0(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v5);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v6);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v7);
  sub_100018938();
  v246 = v8;
  sub_1000188E8();
  v247 = type metadata accessor for Date();
  v9 = sub_100006FBC(v247);
  v256 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v13);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v14);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v15);
  sub_100018938();
  v242 = v16;
  sub_1000188E8();
  v17 = type metadata accessor for UUID();
  v18 = sub_100006FBC(v17);
  v254 = v19;
  v255 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_1000188C4();
  v253 = v22;
  sub_1000188E8();
  v23 = type metadata accessor for Location.Identifier();
  v24 = sub_100006FBC(v23);
  v251 = v25;
  v252 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_1000188C4();
  v250 = v28;
  sub_1000188E8();
  v265 = type metadata accessor for WeatherAlert();
  v29 = sub_100006FBC(v265);
  v263 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v33);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v34);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v35);
  sub_1000782A0();
  v261 = v36;
  sub_100030F24();
  __chkstk_darwin(v37);
  sub_100018938();
  v259 = v38;
  sub_1000188E8();
  v249 = type metadata accessor for ResolvedPredictedLocation();
  v39 = sub_100018904(v249);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v42);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v43);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v44);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v45);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v46);
  sub_100018938();
  v258 = v47;
  sub_1000188E8();
  v48 = type metadata accessor for Importance();
  v49 = sub_100006FBC(v48);
  v264 = v50;
  v52 = *(v51 + 64);
  __chkstk_darwin(v49);
  sub_1000188C4();
  v243 = v53;
  v54 = sub_100003020(&qword_1000A5CE8, &qword_100083018);
  sub_100018904(v54);
  v56 = *(v55 + 64);
  sub_100018920();
  __chkstk_darwin(v57);
  v59 = &v226 - v58;
  v245 = sub_100003020(&qword_1000A4758, &qword_100081798);
  v60 = sub_100018904(v245);
  v62 = *(v61 + 64);
  __chkstk_darwin(v60);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v63);
  sub_1000782A0();
  v257 = v64;
  sub_100030F24();
  v66 = __chkstk_darwin(v65);
  v68 = &v226 - v67;
  __chkstk_darwin(v66);
  v70 = &v226 - v69;
  v71 = type metadata accessor for Logger();
  v266 = sub_100006FBC(v71);
  v267 = v72;
  v74 = *(v73 + 64);
  __chkstk_darwin(v266);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v75);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v76);
  sub_1000782A0();
  sub_1000188D8();
  __chkstk_darwin(v77);
  sub_1000782A0();
  v260 = v78;
  sub_100030F24();
  __chkstk_darwin(v79);
  v81 = &v226 - v80;
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  static Settings.LocationIntelligence.Debug.Notifications.filterCloudChannelWeatherAlertsByTier.getter();
  SettingReader.read<A>(_:)();

  v82 = v269;
  static SettingReader.shared.getter();
  static Settings.LocationIntelligence.Debug.Notifications.filterCloudChannelWeatherAlertsByPredictedTimeWindow.getter();
  SettingReader.read<A>(_:)();

  v83 = v269;
  if (v82 == 1 && (v269 & 1) != 0)
  {
    goto LABEL_6;
  }

  static Logger.predictedLocationNotifications.getter();
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v227 = v54;
    *v86 = 67109376;
    *(v86 + 4) = v82;
    *(v86 + 8) = 1024;
    *(v86 + 10) = v83;
    _os_log_impl(&_mh_execute_header, v84, v85, "Filtering disabled for weather alert; tierFilterEnabled=%{BOOL}d, timeWindowFilterEnabled=%{BOOL}d", v86, 0xEu);
    v54 = v227;
    sub_10000FA7C();
  }

  (*(v267 + 8))(v81, v266);
  if (v82)
  {
LABEL_6:
    v238 = v83;
    WeatherAlert.importance.getter();
    v81 = v264;
    (*(v264 + 13))(v68, enum case for Importance.high(_:), v48);
    sub_100006BD4(v68, 0, 1, v48);
    v87 = *(v54 + 48);
    sub_10003C7D0(v70, v59, &qword_1000A4758, &qword_100081798);
    sub_10003C7D0(v68, &v59[v87], &qword_1000A4758, &qword_100081798);
    sub_100078348(v59);
    if (v90)
    {
      v88 = sub_100078320();
      sub_100018858(v88, v89, &qword_100081798);
      sub_100018858(v70, &qword_1000A4758, &qword_100081798);
      sub_100078348(&v59[v87]);
      if (v90)
      {
        sub_100018858(v59, &qword_1000A4758, &qword_100081798);
        v83 = v238;
        goto LABEL_21;
      }
    }

    else
    {
      v54 = v257;
      sub_10003C7D0(v59, v257, &qword_1000A4758, &qword_100081798);
      sub_100078348(&v59[v87]);
      if (!v90)
      {
        v119 = &v59[v87];
        v120 = v243;
        (*(v81 + 4))(v243, v119, v48);
        sub_1000782E8();
        sub_10007820C(v121, v122);
        v123 = dispatch thunk of static Equatable.== infix(_:_:)();
        v124 = *(v81 + 1);
        v81 += 8;
        v124(v120, v48);
        sub_1000783A0();
        sub_100018858(v125, v126, v127);
        sub_1000783A0();
        sub_100018858(v128, v129, v130);
        v124(v54, v48);
        sub_1000783A0();
        sub_100018858(v131, v132, v133);
        v83 = v238;
        if (v123)
        {
          goto LABEL_21;
        }

LABEL_15:
        v93 = v260;
        static Logger.predictedLocationNotifications.getter();
        v94 = v258;
        sub_1000324E0(v262, v258);
        v95 = v263;
        v96 = *(v263 + 16);
        v97 = v259;
        v98 = v268;
        v99 = v265;
        v96(v259, v268, v265);
        v100 = v261;
        v96(v261, v98, v99);
        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v268 = swift_slowAlloc();
          v269 = v268;
          *v103 = 141558787;
          *(v103 + 4) = 1752392040;
          *(v103 + 12) = 2081;
          v104 = v250;
          Location.identifier.getter();
          Location.Identifier.uniqueID.getter();
          sub_10007841C();
          v105(v104);
          sub_100032544(v94);
          v106 = sub_1000783AC();

          *(v103 + 14) = v106;
          *(v103 + 22) = 2080;
          v107 = v253;
          WeatherAlert.id.getter();
          sub_100078254();
          sub_10007820C(v108, v109);
          v110 = v255;
          dispatch thunk of CustomStringConvertible.description.getter();
          (*(v254 + 8))(v107, v110);
          v111 = *(v95 + 8);
          v111(v97, v99);
          v112 = sub_1000783AC();

          *(v103 + 24) = v112;
          *(v103 + 32) = 2082;
          v113 = v261;
          WeatherAlert.importance.getter();
          String.init<A>(describing:)();
          v111(v113, v99);
          v114 = sub_1000783AC();

          *(v103 + 34) = v114;
          _os_log_impl(&_mh_execute_header, v101, v102, "Determined that weather alert is not relevant because it is not high tier; location=%{private,mask.hash}s, alertID=%s, importance=%{public}s", v103, 0x2Au);
          swift_arrayDestroy();
          sub_10000FA7C();
          sub_10000FA7C();

          sub_100078454();
          v116 = v260;
        }

        else
        {

          v117 = *(v95 + 8);
          v117(v100, v99);
          v117(v97, v99);
          sub_100032544(v94);
          sub_100078454();
          v116 = v93;
        }

        v115(v116, v266);
        return 0;
      }

      v91 = sub_100078320();
      sub_100018858(v91, v92, &qword_100081798);
      sub_100018858(v70, &qword_1000A4758, &qword_100081798);
      (*(v81 + 1))(v54, v48);
    }

    sub_100018858(v59, &qword_1000A5CE8, &qword_100083018);
    goto LABEL_15;
  }

LABEL_21:
  if (!v83)
  {
    return 1;
  }

  v134 = v246;
  v135 = v268;
  WeatherAlert.eventOnsetTime.getter();
  v136 = v247;
  if (sub_100007374(v134, 1, v247) == 1)
  {
    sub_100018858(v134, &qword_1000A3800, &unk_100080860);
    v137 = v265;
    v138 = v256;
    v139 = v262;
    sub_10007832C();
  }

  else
  {
    v138 = v256;
    sub_100078460();
    v140 = v242;
    v141(v242, v134, v136);
    v142 = *(v249 + 28);
    v139 = v262;
    static Date.> infix(_:_:)();
    v143 = v263;
    v137 = v265;
    sub_10007832C();
    if (v144)
    {
      v145 = v235;
      static Logger.predictedLocationNotifications.getter();
      v146 = v231;
      sub_1000324E0(v139, v231);
      v147 = *(v143 + 16);
      sub_10007846C();
      v148();
      v149 = v232;
      (*(v138 + 16))(v232, v140, v136);
      v150 = v139;
      v151 = v237;
      sub_1000324E0(v150, v237);
      v152 = Logger.logObject.getter();
      v153 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        v268 = swift_slowAlloc();
        v269 = v268;
        sub_100078284(7.2228e-34);
        v155 = v250;
        LODWORD(v264) = v153;
        Location.identifier.getter();
        Location.Identifier.uniqueID.getter();
        sub_10007841C();
        v156(v155);
        sub_100032544(v146);
        sub_1000782CC();
        sub_100078388();
        sub_100078378();
        v157 = v253;
        v158 = v239;
        v159 = v239;
        WeatherAlert.id.getter();
        sub_100078254();
        sub_10007820C(v160, v161);
        sub_100078484();
        sub_100078300();
        v162(v157, v155);
        (*(v143 + 8))(v158, v265);
        sub_1000782CC();
        sub_100078388();
        *(v154 + 24) = v159;
        *(v154 + 32) = 2082;
        sub_10007826C();
        sub_10007820C(v163, v164);
        sub_1000784A4();
        sub_100078440();
        v158(v149, v136);
        v165 = sub_10000D9FC(v149, v143 + 8, &v269);

        *(v154 + 34) = v165;
        *(v154 + 42) = 2082;
        v166 = v237;
        v167 = v237 + *(v249 + 28);
        sub_1000784A4();
        sub_100078314();
        sub_100032544(v166);
        sub_1000782CC();
        sub_100078388();
        *(v154 + 44) = v167;
        sub_1000783C8(&_mh_execute_header, v168, v169, "Determined that weather alert is not relevant because it starts after the predicted end date; location=%{private,mask.hash}s, alertID=%{public}s, alertOnsetDate=%{public}s, locationEndDate=%{public}s");
        sub_100078368();
        swift_arrayDestroy();
        sub_10000FA7C();
        sub_10000FA7C();

        sub_100078434();
        v170(v235);
        v158(v242, v136);
        return 0;
      }

      sub_100032544(v151);
      v221 = *(v138 + 8);
      v221(v149, v136);
      (*(v143 + 8))(v239, v265);
      sub_100032544(v146);
      sub_100078434();
      v222(v145);
      v223 = v140;
LABEL_40:
      v221(v223, v136);
      return 0;
    }

    (*(v138 + 8))(v140, v136);
  }

  v171 = v137;
  WeatherAlert.eventEndTime.getter();
  v172 = sub_100007374(v54, 1, v136);
  v173 = v244;
  if (v172 != 1)
  {
    sub_100078460();
    v174 = v241;
    v175(v241, v54, v136);
    v176 = *(v249 + 24);
    if ((static Date.< infix(_:_:)() & 1) == 0)
    {
      (*(v138 + 8))(v174, v136);
      goto LABEL_34;
    }

    v177 = v233;
    static Logger.predictedLocationNotifications.getter();
    sub_1000324E0(v139, v236);
    (*(v263 + 16))(v81, v135, v171);
    (*(v138 + 16))(v173, v174, v136);
    sub_1000324E0(v139, v68);
    v178 = Logger.logObject.getter();
    v179 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      v268 = swift_slowAlloc();
      v269 = v268;
      sub_100078284(7.2228e-34);
      v181 = v250;
      LODWORD(v264) = v179;
      v182 = v236;
      Location.identifier.getter();
      Location.Identifier.uniqueID.getter();
      sub_100078314();
      sub_10007841C();
      v183(v181);
      sub_100032544(v182);
      sub_1000782CC();
      sub_100078388();
      sub_100078378();
      v184 = v81;
      v185 = v253;
      WeatherAlert.id.getter();
      sub_100078254();
      sub_10007820C(v186, v187);
      sub_100078484();
      sub_100078300();
      v188(v185, v181);
      (*(v263 + 8))(v184, v171);
      sub_1000782CC();
      sub_100078388();
      *(v180 + 24) = v184;
      *(v180 + 32) = 2082;
      sub_10007826C();
      sub_10007820C(v189, v190);
      v191 = v244;
      v192 = v244;
      sub_1000784A4();
      sub_100078440();
      v182(v191, v136);
      v193 = sub_10000D9FC(v192, v171, &v269);

      *(v180 + 34) = v193;
      *(v180 + 42) = 2082;
      v194 = v248;
      v195 = v248 + *(v249 + 24);
      sub_1000784A4();
      sub_100078314();
      sub_100032544(v194);
      sub_1000782CC();
      sub_100078388();
      *(v180 + 44) = v195;
      sub_1000783C8(&_mh_execute_header, v196, v197, "Determined that weather alert is not relevant because it ends before the predicted start date; location=%{private,mask.hash}s, alertID=%{public}s, alertEndDate=%{public}s, locationStartDate=%{public}s");
      sub_100078368();
      swift_arrayDestroy();
      sub_10000FA7C();
      sub_10000FA7C();

      sub_100078434();
      v198(v233);
      v182(v241, v136);
      return 0;
    }

    sub_100032544(v68);
    v221 = *(v138 + 8);
    v221(v173, v136);
    (*(v263 + 8))(v81, v171);
    sub_100032544(v236);
    sub_100078434();
    v224(v177);
    v223 = v241;
    goto LABEL_40;
  }

  sub_100018858(v54, &qword_1000A3800, &unk_100080860);
LABEL_34:
  v199 = v240;
  WeatherAlert.eventOnsetTime.getter();
  v118 = 1;
  v200 = sub_100007374(v199, 1, v136);
  sub_100018858(v199, &qword_1000A3800, &unk_100080860);
  if (v200 == 1)
  {
    v201 = v234;
    WeatherAlert.eventEndTime.getter();
    v202 = sub_100007374(v201, 1, v136);
    sub_100018858(v201, &qword_1000A3800, &unk_100080860);
    if (v202 == 1)
    {
      v203 = v229;
      static Logger.predictedLocationNotifications.getter();
      v204 = v228;
      sub_1000324E0(v139, v228);
      v205 = v263;
      v206 = v230;
      v207 = v171;
      (*(v263 + 16))(v230, v135, v171);
      v208 = Logger.logObject.getter();
      v209 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v208, v209))
      {
        v210 = swift_slowAlloc();
        v268 = swift_slowAlloc();
        v269 = v268;
        sub_100078284(7.2226e-34);
        v211 = v250;
        Location.identifier.getter();
        Location.Identifier.uniqueID.getter();
        sub_100078314();
        sub_10007841C();
        v212(v211);
        sub_100032544(v204);
        sub_1000782CC();
        sub_100078388();
        sub_100078378();
        v213 = v253;
        v214 = v230;
        WeatherAlert.id.getter();
        sub_100078254();
        sub_10007820C(v215, v216);
        v217 = v255;
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_100078300();
        v218(v213, v217);
        (*(v205 + 8))(v214, v207);
        sub_1000782CC();
        sub_100078388();
        *(v210 + 24) = v213;
        _os_log_impl(&_mh_execute_header, v208, v209, "Determined that weather alert is relevant because it had no onset or end time; location=%{private,mask.hash}s, alertID=%{public}s", v210, 0x20u);
        sub_100078368();
        swift_arrayDestroy();
        sub_10000FA7C();
        sub_10000FA7C();

        sub_100078454();
        v220 = v229;
      }

      else
      {

        (*(v205 + 8))(v206, v207);
        sub_100032544(v204);
        sub_100078454();
        v220 = v203;
      }

      v219(v220, v266);
      return 1;
    }
  }

  return v118;
}

uint64_t sub_100077D84@<X0>(uint64_t a1@<X8>)
{
  v66[22] = a1;
  v1 = sub_100003020(&qword_1000A4758, &qword_100081798);
  sub_100006FF0(v1);
  v3 = *(v2 + 64);
  sub_100018920();
  __chkstk_darwin(v4);
  v66[21] = v66 - v5;
  v6 = sub_100003020(&qword_1000A3E28, &qword_1000817A0);
  sub_100006FF0(v6);
  v8 = *(v7 + 64);
  sub_100018920();
  __chkstk_darwin(v9);
  v66[20] = v66 - v10;
  v11 = sub_100003020(&qword_1000A4760, &qword_1000817A8);
  sub_100006FF0(v11);
  v13 = *(v12 + 64);
  sub_100018920();
  __chkstk_darwin(v14);
  v15 = type metadata accessor for Severity();
  v16 = sub_100006FF0(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_10000E970();
  v19 = sub_100003020(&qword_1000A4768, &unk_1000817B0);
  sub_100006FF0(v19);
  v21 = *(v20 + 64);
  sub_100018920();
  __chkstk_darwin(v22);
  v66[2] = v66 - v23;
  v24 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v25 = sub_100006FF0(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_100015754();
  v66[5] = v28 - v29;
  __chkstk_darwin(v30);
  v66[6] = v66 - v31;
  v32 = type metadata accessor for Date();
  v33 = sub_100006FF0(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_100015754();
  v66[7] = v36 - v37;
  v39 = __chkstk_darwin(v38);
  v66[8] = v66 - v40;
  __chkstk_darwin(v39);
  v66[9] = v66 - v41;
  v42 = sub_100003020(&qword_1000A3540, &unk_100080520);
  sub_100006FF0(v42);
  v44 = *(v43 + 64);
  sub_100018920();
  __chkstk_darwin(v45);
  v47 = v66 - v46;
  v66[18] = v66 - v46;
  v48 = type metadata accessor for UUID();
  v49 = sub_100006FF0(v48);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  sub_1000188C4();
  v66[19] = v52;
  WeatherAlert.id.getter();
  v53 = sub_100003020(&qword_1000A3548, &qword_100080FC0);
  sub_100006BD4(v47, 1, 1, v53);
  v54 = WeatherAlert.areaId.getter();
  v66[16] = v55;
  v66[17] = v54;
  v56 = WeatherAlert.areaName.getter();
  v66[14] = v57;
  v66[15] = v56;
  v58 = WeatherAlert.countryCode.getter();
  v66[12] = v59;
  v66[13] = v58;
  v60 = WeatherAlert.description.getter();
  v66[10] = v61;
  v66[11] = v60;
  WeatherAlert.expireTime.getter();
  WeatherAlert.issuedTime.getter();
  WeatherAlert.effectiveTime.getter();
  WeatherAlert.eventOnsetTime.getter();
  WeatherAlert.eventEndTime.getter();
  v62 = WeatherAlert.detailsUrl.getter();
  v66[3] = v63;
  v66[4] = v62;
  WeatherAlert.certainty.getter();
  v66[1] = WeatherAlert.phenomenon.getter();
  v66[0] = v64;
  WeatherAlert.responses.getter();
  WeatherAlert.severity.getter();
  WeatherAlert.significance.getter();
  WeatherAlert.source.getter();
  WeatherAlert.eventSource.getter();
  WeatherAlert.urgency.getter();
  WeatherAlert.importance.getter();
  return WeatherAlert.init(id:area:areaId:areaName:countryCode:description:expireTime:issuedTime:effectiveTime:eventOnsetTime:eventEndTime:detailsUrl:certainty:phenomenon:responses:severity:significance:source:eventSource:urgency:messages:importance:)();
}

uint64_t sub_10007820C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100078284(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t sub_1000782AC()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1000782CC()
{

  return sub_10000D9FC(v0, v1, (v2 - 96));
}

void sub_10007832C()
{
  v1 = *(v0 - 264);
  v2 = *(v0 - 280);
  v3 = *(v0 - 288);
}

uint64_t sub_100078388()
{
}

uint64_t sub_1000783AC()
{

  return sub_10000D9FC(v0, v1, (v2 - 96));
}

void sub_1000783C8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 136);
  v9 = *(v6 - 136);

  _os_log_impl(a1, v4, v9, a4, v5, 0x34u);
}

void sub_1000783EC()
{

  Hasher._combine(_:)(0);
}

void sub_100078404()
{

  Hasher._combine(_:)(1u);
}

uint64_t sub_100078484()
{
  v2 = *(v0 - 208);

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1000784A4()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t type metadata accessor for PredictedLocationsService()
{
  result = qword_1000A5D08;
  if (!qword_1000A5D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100078554(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_100006BD4(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_100083088;
  v10[5] = v9;
  sub_10007AEA4(0, 0, v7, &unk_100083098, v10);
}

uint64_t sub_100078664(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for MachService();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_100006930(a1, v2 + qword_1000A5CF8);
  sub_100006930(a2, v2 + qword_1000A5D00);
  static MachServices.PredictedLocations.getter();
  sub_100005360();
  static OS_dispatch_queue.locationIntelligence.getter();
  v7 = XPCDaemonService.init(machService:targetQueue:)();
  sub_100006994(a2);
  sub_100006994(a1);
  return v7;
}

uint64_t sub_10007877C()
{
  sub_100006994((v0 + qword_1000A5CF8));
  v1 = (v0 + qword_1000A5D00);

  return sub_100006994(v1);
}

uint64_t sub_1000787BC(uint64_t a1)
{
  sub_100006994((a1 + qword_1000A5CF8));
  v2 = (a1 + qword_1000A5D00);

  return sub_100006994(v2);
}

uint64_t sub_100078810()
{
  sub_100030C4C();
  v1 = sub_10007BF6C();
  sub_10007BE78(v1);
  *(v0 + 32) = v2;
  v4 = *(v3 + 64);
  *(v0 + 40) = sub_100058078();
  v5 = static LocIntelActor.shared.getter();
  sub_10007BEEC(v5);
  sub_10007BE4C();
  sub_10007BC84(v6, v7);
  v8 = sub_10007BF3C();
  sub_10007BEC0(v8, v9);
  v10 = sub_10004B174();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000788E0()
{
  sub_10004B23C();
  sub_100030E20();
  sub_10007BF30();
  static Logger.predictedLocationNotifications.getter();
  Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (sub_10004B070(v0))
  {
    v1 = sub_100030F7C();
    sub_10004B0A8(v1);
    sub_1000310B0(&_mh_execute_header, v2, v3, "Performing refresh of predicted locations in weatherd");
    sub_10004B030();
  }

  sub_10007BF84();
  v4 = sub_100030CAC();
  v5(v4);
  sub_10007BE8C(qword_1000A5CF8);
  v6 = async function pointer to dispatch thunk of PredictedLocationsNotificationsManagerType.processNotificationsForPredictedLocations()[1];
  v7 = swift_task_alloc();
  v8 = sub_10007BF24(v7);
  *v8 = v9;
  sub_10007BE64(v8);
  sub_10004B1C0();

  return dispatch thunk of PredictedLocationsNotificationsManagerType.processNotificationsForPredictedLocations()(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1000789C8()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *(v0 + 72);
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030E68();
  v6 = *(v5 + 64);
  v7 = *(v0 + 56);

  return _swift_task_switch(sub_10007BE24, v7, v6);
}

uint64_t sub_100078AF4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100078BB8, v4, v3);
}

uint64_t sub_100078BB8()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_100078810();
}

uint64_t sub_100078C50()
{
  sub_100030C4C();
  v1 = sub_10007BF6C();
  sub_10007BE78(v1);
  *(v0 + 32) = v2;
  v4 = *(v3 + 64);
  *(v0 + 40) = sub_100058078();
  v5 = static LocIntelActor.shared.getter();
  sub_10007BEEC(v5);
  sub_10007BE4C();
  sub_10007BC84(v6, v7);
  v8 = sub_10007BF3C();
  sub_10007BEC0(v8, v9);
  v10 = sub_10004B174();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100078D20()
{
  sub_10004B23C();
  sub_100030E20();
  sub_10007BF30();
  static Logger.predictedLocationNotifications.getter();
  Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (sub_10004B070(v0))
  {
    v1 = sub_100030F7C();
    sub_10004B0A8(v1);
    sub_1000310B0(&_mh_execute_header, v2, v3, "Will schedule recurring refresh of predicted locations");
    sub_10004B030();
  }

  sub_10007BF84();
  v4 = sub_100030CAC();
  v5(v4);
  sub_10007BE8C(qword_1000A5CF8);
  v6 = async function pointer to dispatch thunk of PredictedLocationsNotificationsManagerType.reschedulePredictedLocationNotifications()[1];
  v7 = swift_task_alloc();
  v8 = sub_10007BF24(v7);
  *v8 = v9;
  sub_10007BE64(v8);
  sub_10004B1C0();

  return dispatch thunk of PredictedLocationsNotificationsManagerType.reschedulePredictedLocationNotifications()(v10, v11);
}

uint64_t sub_100078E08()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *(v0 + 72);
  v3 = *v1;
  sub_10000FA6C();
  *v4 = v3;

  sub_100030E68();
  v6 = *(v5 + 64);
  v7 = *(v0 + 56);

  return _swift_task_switch(sub_100078F14, v7, v6);
}

uint64_t sub_100078F14()
{
  sub_100030C4C();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  sub_10007BED0();

  return v3();
}

uint64_t sub_100078F94(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100079058, v4, v3);
}

uint64_t sub_100079058()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_100078C50();
}

uint64_t sub_1000790F0()
{
  sub_10004B23C();
  sub_100030E20();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10000FA6C();
  *v5 = v4;
  v6 = v3[6];
  v7 = v3[3];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[5];
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v9, 0);
  }

  _Block_release(v4[5]);
  v11 = v8[1];
  sub_10004B1C0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_100079260()
{
  sub_100030C4C();
  v1[2] = v0;
  v2 = *(*(sub_100003020(&unk_1000A3930, &qword_100080900) - 8) + 64);
  v1[3] = sub_100058078();
  v3 = type metadata accessor for Logger();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64);
  v1[6] = sub_100058078();
  v1[7] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BE4C();
  sub_10007BC84(v6, v7);
  v9 = sub_10007BF3C();

  return _swift_task_switch(sub_10007938C, v9, v8);
}

uint64_t sub_10007938C()
{
  sub_100030E20();
  v2 = v0[6];
  v1 = v0[7];

  static Logger.predictedLocationNotifications.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100030F7C();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Performing demo refresh of predicted locations in weatherd after feature enablement", v5, 2u);
  }

  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  (*(v7 + 8))(v6, v9);
  v11 = type metadata accessor for TaskPriority();
  sub_100006BD4(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v13 = v10;
  sub_1000799EC(0, 0, v8, &unk_100083128, v12);

  sub_10007B1B0(v8);

  sub_10007BED0();

  return v14();
}

uint64_t sub_100079508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000795C8, 0, 0);
}

uint64_t sub_1000795C8()
{
  sub_100030C4C();
  v1 = *(v0 + 40);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v3 = sub_10007BF18(v2);
  *v3 = v4;
  v3[1] = sub_10007968C;
  v5 = *(v0 + 40);

  return sub_10007B7EC(0xD02AB486CEDC0000, 0, 0, 0, 1);
}

uint64_t sub_10007968C()
{
  sub_100030C58();
  sub_100043668();
  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = *v1;
  sub_10000FA6C();
  *v8 = v7;
  *(v9 + 56) = v0;

  v10 = sub_100030CAC();
  v11(v10);
  if (v0)
  {
    v12 = sub_100079990;
  }

  else
  {
    v12 = sub_1000797E4;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1000797E4()
{
  sub_100030C58();
  v1 = (*(v0 + 16) + qword_1000A5CF8);
  v2 = v1[4];
  sub_1000032B8(v1, v1[3]);
  v3 = async function pointer to dispatch thunk of PredictedLocationsNotificationsManagerType.processNotificationsForPredictedLocations()[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v5 = sub_10007BE64(v4);

  return dispatch thunk of PredictedLocationsNotificationsManagerType.processNotificationsForPredictedLocations()(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100079894()
{
  sub_100030C4C();
  sub_100043668();
  v2 = *(v1 + 64);
  v3 = *(v1 + 40);
  v4 = *v0;
  sub_10000FA6C();
  *v5 = v4;

  sub_10007BED0();

  return v6();
}

uint64_t sub_100079990()
{
  sub_100030C4C();
  v1 = *(v0 + 40);

  sub_100030C70();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1000799EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v23 - v10;
  sub_10007B140(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_100007374(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10007B1B0(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100079C3C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100079D00, v4, v3);
}

uint64_t sub_100079D00()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_100079260();
}

uint64_t sub_100079D98()
{
  sub_100030C4C();
  v1 = sub_10007BF6C();
  sub_10007BE78(v1);
  *(v0 + 32) = v2;
  v4 = *(v3 + 64);
  *(v0 + 40) = sub_100058078();
  v5 = static LocIntelActor.shared.getter();
  sub_10007BEEC(v5);
  sub_10007BE4C();
  sub_10007BC84(v6, v7);
  v8 = sub_10007BF3C();
  sub_10007BEC0(v8, v9);
  v10 = sub_10004B174();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100079E68()
{
  sub_10004B23C();
  sub_100030E20();
  sub_10007BF30();
  static Logger.predictedLocationNotifications.getter();
  Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (sub_10004B070(v0))
  {
    v1 = sub_100030F7C();
    sub_10004B0A8(v1);
    sub_1000310B0(&_mh_execute_header, v2, v3, "Will cancel scheduled predicted location notifications");
    sub_10004B030();
  }

  sub_10007BF84();
  v4 = sub_100030CAC();
  v5(v4);
  sub_10007BE8C(qword_1000A5CF8);
  v6 = async function pointer to dispatch thunk of PredictedLocationsNotificationsManagerType.unschedulePredictedLocationNotifications()[1];
  v7 = swift_task_alloc();
  v8 = sub_10007BF24(v7);
  *v8 = v9;
  sub_10007BE64(v8);
  sub_10004B1C0();

  return dispatch thunk of PredictedLocationsNotificationsManagerType.unschedulePredictedLocationNotifications()(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_100079F70(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007A034, v4, v3);
}

uint64_t sub_10007A034()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_100079D98();
}

uint64_t sub_10007A0CC()
{
  sub_100030C4C();
  v1 = sub_10007BF6C();
  sub_10007BE78(v1);
  *(v0 + 32) = v2;
  v4 = *(v3 + 64);
  *(v0 + 40) = sub_100058078();
  v5 = static LocIntelActor.shared.getter();
  sub_10007BEEC(v5);
  sub_10007BE4C();
  sub_10007BC84(v6, v7);
  v8 = sub_10007BF3C();
  sub_10007BEC0(v8, v9);
  v10 = sub_10004B174();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10007A19C()
{
  sub_10004B23C();
  sub_100030E20();
  sub_10007BF30();
  static Logger.predictedLocationIntentDonations.getter();
  Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (sub_10004B070(v0))
  {
    v1 = sub_100030F7C();
    sub_10004B0A8(v1);
    sub_1000310B0(&_mh_execute_header, v2, v3, "Performing refresh of predicted locations in weatherd");
    sub_10004B030();
  }

  sub_10007BF84();
  v4 = sub_100030CAC();
  v5(v4);
  sub_10007BE8C(qword_1000A5D00);
  v6 = async function pointer to dispatch thunk of PredictedLocationsIntentDonationManagerType.donateIntentsForPredictedLocations()[1];
  v7 = swift_task_alloc();
  v8 = sub_10007BF24(v7);
  *v8 = v9;
  sub_10007BE64(v8);
  sub_10004B1C0();

  return dispatch thunk of PredictedLocationsIntentDonationManagerType.donateIntentsForPredictedLocations()(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_10007A2A4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007A368, v4, v3);
}

uint64_t sub_10007A368()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_10007A0CC();
}

uint64_t sub_10007A400()
{
  sub_100030C4C();
  v1 = sub_10007BF6C();
  sub_10007BE78(v1);
  *(v0 + 32) = v2;
  v4 = *(v3 + 64);
  *(v0 + 40) = sub_100058078();
  v5 = static LocIntelActor.shared.getter();
  sub_10007BEEC(v5);
  sub_10007BE4C();
  sub_10007BC84(v6, v7);
  v8 = sub_10007BF3C();
  sub_10007BEC0(v8, v9);
  v10 = sub_10004B174();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10007A4D0()
{
  sub_10004B23C();
  sub_100030E20();
  sub_10007BF30();
  static Logger.predictedLocationIntentDonations.getter();
  Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (sub_10004B070(v0))
  {
    v1 = sub_100030F7C();
    sub_10004B0A8(v1);
    sub_1000310B0(&_mh_execute_header, v2, v3, "Will schedule recurring refresh of predicted locations");
    sub_10004B030();
  }

  sub_10007BF84();
  v4 = sub_100030CAC();
  v5(v4);
  sub_10007BE8C(qword_1000A5D00);
  v6 = async function pointer to dispatch thunk of PredictedLocationsIntentDonationManagerType.reschedulePredictedLocationsRefreshForIntentDonations()[1];
  v7 = swift_task_alloc();
  v8 = sub_10007BF24(v7);
  *v8 = v9;
  sub_10007BE64(v8);
  sub_10004B1C0();

  return dispatch thunk of PredictedLocationsIntentDonationManagerType.reschedulePredictedLocationsRefreshForIntentDonations()(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_10007A5D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007A69C, v4, v3);
}

uint64_t sub_10007A69C()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_10007A400();
}

uint64_t sub_10007A734()
{
  sub_100030C4C();
  v1 = sub_10007BF6C();
  sub_10007BE78(v1);
  *(v0 + 32) = v2;
  v4 = *(v3 + 64);
  *(v0 + 40) = sub_100058078();
  v5 = static LocIntelActor.shared.getter();
  sub_10007BEEC(v5);
  sub_10007BE4C();
  sub_10007BC84(v6, v7);
  v8 = sub_10007BF3C();
  sub_10007BEC0(v8, v9);
  v10 = sub_10004B174();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10007A804()
{
  sub_10004B23C();
  sub_100030E20();
  sub_10007BF30();
  static Logger.predictedLocationIntentDonations.getter();
  Logger.logObject.getter();
  v0 = static os_log_type_t.default.getter();
  if (sub_10004B070(v0))
  {
    v1 = sub_100030F7C();
    sub_10004B0A8(v1);
    sub_1000310B0(&_mh_execute_header, v2, v3, "Will cancel scheduled intent donations");
    sub_10004B030();
  }

  sub_10007BF84();
  v4 = sub_100030CAC();
  v5(v4);
  sub_10007BE8C(qword_1000A5D00);
  v6 = async function pointer to dispatch thunk of PredictedLocationsIntentDonationManagerType.cancelScheduledPredictedLocationsRefreshForIntentDonations()[1];
  v7 = swift_task_alloc();
  v8 = sub_10007BF24(v7);
  *v8 = v9;
  sub_10007BE64(v8);
  sub_10004B1C0();

  return dispatch thunk of PredictedLocationsIntentDonationManagerType.cancelScheduledPredictedLocationsRefreshForIntentDonations()(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_10007A90C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  sub_100030EB0();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return sub_100078554(a5, v8);
}

uint64_t sub_10007A974(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = static LocIntelActor.shared.getter();
  type metadata accessor for LocIntelActor.Actor();
  sub_10007BC84(&qword_1000A4488, &type metadata accessor for LocIntelActor.Actor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10007AA38, v4, v3);
}

uint64_t sub_10007AA38()
{
  sub_100030C4C();
  sub_10007BF54();
  *(v2 + 40) = _Block_copy(v1);
  v3 = v0;
  v4 = swift_task_alloc();
  v5 = sub_10007BF18(v4);
  *v5 = v6;
  sub_10007BEB0(v5);

  return sub_10007A734();
}

uint64_t sub_10007AAD4()
{
  sub_100030C58();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10007BEE0(v3);
  *v4 = v5;
  v6 = sub_100070AF8(v4);

  return v7(v6);
}

uint64_t sub_10007AB64(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000435A4;

  return v7();
}

uint64_t sub_10007AC50()
{
  sub_10004B23C();
  sub_100030E20();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10007BEE0(v5);
  *v6 = v7;
  v6[1] = sub_1000435A4;
  sub_10004B1C0();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10007AD00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100043300;

  return v8();
}

uint64_t sub_10007ADE8()
{
  sub_100030E20();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10007BEE0(v5);
  *v6 = v7;
  v6[1] = sub_1000435A4;
  v8 = sub_10007BF08();

  return v9(v8);
}

uint64_t sub_10007AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003020(&unk_1000A3930, &qword_100080900);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10007B140(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  if (sub_100007374(v12, 1, v13) == 1)
  {
    sub_10007B1B0(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10007B1B0(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10007B1B0(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10007B140(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&unk_1000A3930, &qword_100080900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007B1B0(uint64_t a1)
{
  v2 = sub_100003020(&unk_1000A3930, &qword_100080900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007B218(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007B310;

  return v7(a1);
}

uint64_t sub_10007B310()
{
  sub_100030C4C();
  sub_100043668();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000FA6C();
  *v4 = v3;

  sub_10007BED0();

  return v5();
}

uint64_t sub_10007B3F0()
{
  v1 = *(v0 + 24);

  v2 = sub_100030EB0();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10007B420()
{
  sub_100030C58();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10007BEE0(v3);
  *v4 = v5;
  v4[1] = sub_1000435A4;
  v6 = sub_10007BF08();

  return v7(v6);
}

uint64_t sub_10007B4C8()
{
  sub_100030C58();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10007BEE0(v3);
  *v4 = v5;
  v6 = sub_100070AF8(v4);

  return v7(v6);
}

uint64_t sub_10007B558()
{
  sub_100030C58();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10007BEE0(v3);
  *v4 = v5;
  v6 = sub_100070AF8(v4);

  return v7(v6);
}

uint64_t sub_10007B5E8()
{
  sub_100030C58();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10007BEE0(v3);
  *v4 = v5;
  v6 = sub_100070AF8(v4);

  return v7(v6);
}

uint64_t sub_10007B678()
{
  sub_100030C58();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10007BEE0(v3);
  *v4 = v5;
  v6 = sub_100070AF8(v4);

  return v7(v6);
}

uint64_t sub_10007B708()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10007B748()
{
  sub_100030C58();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10007BEE0(v4);
  *v5 = v6;
  v5[1] = sub_100043300;
  v7 = sub_10007BF08();

  return sub_100079508(v7, v8, v2, v3);
}

uint64_t sub_10007B7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10007B8EC, 0, 0);
}

uint64_t sub_10007B8EC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_10007BC84(&qword_1000A5D58, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10007BC84(&qword_1000A5D60, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10007BA7C;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10007BA7C()
{
  sub_100030E20();
  sub_100043668();
  v3 = v2;
  v4 = v2[14];
  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[11];
  v8 = v2[8];
  v9 = *v1;
  sub_10000FA6C();
  *v10 = v9;
  v3[15] = v0;

  v6(v7, v8);
  if (v0)
  {

    return _swift_task_switch(sub_10007BC20, 0, 0);
  }

  else
  {
    v12 = v3[10];
    v11 = v3[11];

    sub_10007BED0();

    return v13();
  }
}

uint64_t sub_10007BC20()
{
  sub_100030C4C();
  v2 = v0[10];
  v1 = v0[11];

  sub_100030C70();
  v4 = v0[15];

  return v3();
}

uint64_t sub_10007BC84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007BCCC()
{
  sub_100030C58();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10007BEE0(v3);
  *v4 = v5;
  v6 = sub_100070AF8(v4);

  return v7(v6);
}

uint64_t sub_10007BD5C()
{
  _Block_release(*(v0 + 16));

  v1 = sub_100030EB0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10007BD94()
{
  sub_100030C58();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10007BEE0(v3);
  *v4 = v5;
  v6 = sub_100070AF8(v4);

  return v7(v6);
}

uint64_t sub_10007BE78(uint64_t a1)
{
  *(v1 + 24) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_10007BEB0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t sub_10007BEC0(uint64_t result, uint64_t a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_10007BED0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10007BEEC(uint64_t a1)
{
  *(v1 + 48) = a1;

  return type metadata accessor for LocIntelActor.Actor();
}

uint64_t sub_10007BF3C()
{

  return dispatch thunk of Actor.unownedExecutor.getter();
}

uint64_t sub_10007BF54()
{
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
}

uint64_t sub_10007BF6C()
{
  *(v1 + 16) = v0;

  return type metadata accessor for Logger();
}

void sub_10007BF84()
{
  v4 = v1[4];
  v3 = v1[5];
  v6 = v1[2];
  v5 = v1[3];
}

uint64_t sub_10007BF9C()
{
  v1 = type metadata accessor for Location();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  sub_100037B74();
  Location.coordinate.getter();
  v7 = *(v2 + 8);
  v7(v5, v1);
  if (Array<A>.contains(_:)())
  {
    v8 = 1;
  }

  else
  {
    sub_100037B5C();
    Location.coordinate.getter();
    v7(v5, v1);
    v8 = Array<A>.contains(_:)();
  }

  return v8 & 1;
}

uint64_t sub_10007C0F0()
{
  v1 = *v0;
  result = *(v0 + 16);
  if (result == 7)
  {
    static Settings.WeatherEnvironment.contentEnvironment.getter();
    sub_10007C610();
    Configurable.setting<A>(_:)();

    result = v3;
    *(v0 + 16) = v3;
  }

  return result;
}

uint64_t sub_10007C180()
{
  v1 = type metadata accessor for AppConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[7];
  sub_1000032B8(v0 + 3, v0[6]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  sub_10007C0F0();
  AppConfiguration.endpointConfig(for:)();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_10007C37C()
{
  v0 = type metadata accessor for EndpointConfiguration();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007C180();
  EndpointConfiguration.analyticsURL.getter();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10007C4C0()
{
  v0 = sub_10007C0F0();

  return ContentEnvironment.description.getter(v0);
}

uint64_t sub_10007C560()
{
  type metadata accessor for AppGroup();
  static AppGroup.weather.getter();
  v0 = AppGroup.identifier.getter();

  return v0;
}

uint64_t sub_10007C5B4()
{
  sub_100006994((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

unint64_t sub_10007C610()
{
  result = qword_1000A5E10;
  if (!qword_1000A5E10)
  {
    type metadata accessor for AnalyticsEndpoint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A5E10);
  }

  return result;
}

Swift::String __swiftcall GeocodeManagerGetCurrentCountryCode()()
{
  CurrentCountry = GeocodeManagerGetCurrentCountryCode()();
  result._object = v1;
  result._countAndFlagsBits = CurrentCountry;
  return result;
}

uint64_t Assembly.init()()
{
  return Assembly.init()();
}

{
  return Assembly.init()();
}

uint64_t type metadata accessor for Assembly()
{
  return type metadata accessor for Assembly();
}

{
  return type metadata accessor for Assembly();
}

uint64_t dispatch thunk of ResolverType.resolve<A>(_:)()
{
  return dispatch thunk of ResolverType.resolve<A>(_:)();
}

{
  return dispatch thunk of ResolverType.resolve<A>(_:)();
}

uint64_t RegistrationContainer.register<A>(_:name:factory:)()
{
  return RegistrationContainer.register<A>(_:name:factory:)();
}

{
  return RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t Promise.then<A>(on:closure:)()
{
  return Promise.then<A>(on:closure:)();
}

{
  return Promise.then<A>(on:closure:)();
}

uint64_t Promise.then<A, B>(on:disposeOn:closure:)()
{
  return Promise.then<A, B>(on:disposeOn:closure:)();
}

{
  return Promise.then<A, B>(on:disposeOn:closure:)();
}

uint64_t dispatch thunk of WeatherDataServiceType.perform(requests:for:with:)()
{
  return dispatch thunk of WeatherDataServiceType.perform(requests:for:with:)();
}

{
  return dispatch thunk of WeatherDataServiceType.perform(requests:for:with:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}