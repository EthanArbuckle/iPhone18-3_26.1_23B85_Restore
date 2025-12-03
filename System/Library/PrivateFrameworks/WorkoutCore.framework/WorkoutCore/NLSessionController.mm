@interface NLSessionController
- (HKWorkoutSessionDelegate)mirroredDelegate;
- (HKWorkoutSessionDelegate)stingDelegate;
- (HKWorkoutSessionPrivateDelegate)mirroringDelegate;
- (NLSessionController)initWithWorkoutSession:(id)session;
- (NLSessionControllerDelegate)delegate;
- (void)_configureStateActions;
- (void)_configureStateMachine;
- (void)_onCompleted;
- (void)_onRecovery;
- (void)_onSessionError;
- (void)_prepareSession;
- (void)_setState:(unint64_t)state;
- (void)_startSession;
- (void)_stopSession;
- (void)addSessionControllerStateObserver:(id)observer;
- (void)removeSessionControllerStateObserver:(id)observer;
- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date;
- (void)workoutSession:(id)session didDisconnectFromRemoteDeviceWithError:(id)error;
- (void)workoutSession:(id)session didFailWithError:(id)error;
- (void)workoutSession:(id)session didGenerateEvent:(id)event;
- (void)workoutSession:(id)session didReceiveDataFromRemoteDevice:(id)device;
- (void)workoutSession:(id)session didReceiveDataFromRemoteWorkoutSession:(id)workoutSession;
- (void)workoutSession:(id)session didSuggestWorkoutConfiguration:(id)configuration date:(id)date;
- (void)workoutSession:(id)session didUpdateWorkoutConfiguration:(id)configuration;
@end

@implementation NLSessionController

- (NLSessionController)initWithWorkoutSession:(id)session
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = NLSessionController;
  v8 = [(NLSessionController *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    selfCopy->_sessionState = 0;
    objc_storeStrong(&selfCopy->_workoutSession, location[0]);
    [(HKWorkoutSession *)selfCopy->_workoutSession setDelegate:selfCopy];
    [(NLSessionController *)selfCopy _configureStateMachine];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateObservers = selfCopy->_stateObservers;
    selfCopy->_stateObservers = weakObjectsHashTable;
    MEMORY[0x277D82BD8](stateObservers);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)_configureStateMachine
{
  v252[14] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  __b[14] = a2;
  memset(__b, 0, 0x70uLL);
  NLSessionStateIdentifierShortHandStruct(__b);
  v230 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[0]];
  v252[0] = v230;
  v229 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v252[1] = v229;
  v228 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v252[2] = v228;
  v227 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v252[3] = v227;
  v226 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v252[4] = v226;
  v225 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v252[5] = v225;
  v224 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v252[6] = v224;
  v223 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v252[7] = v223;
  v222 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v252[8] = v222;
  v221 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v252[9] = v221;
  v220 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v252[10] = v220;
  v219 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v252[11] = v219;
  v218 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[13]];
  v252[12] = v218;
  v217 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v252[13] = v217;
  v248 = [MEMORY[0x277CBEA60] arrayWithObjects:v252 count:14];
  MEMORY[0x277D82BD8](v217);
  MEMORY[0x277D82BD8](v218);
  MEMORY[0x277D82BD8](v219);
  MEMORY[0x277D82BD8](v220);
  MEMORY[0x277D82BD8](v221);
  MEMORY[0x277D82BD8](v222);
  MEMORY[0x277D82BD8](v223);
  MEMORY[0x277D82BD8](v224);
  MEMORY[0x277D82BD8](v225);
  MEMORY[0x277D82BD8](v226);
  MEMORY[0x277D82BD8](v227);
  MEMORY[0x277D82BD8](v228);
  MEMORY[0x277D82BD8](v229);
  MEMORY[0x277D82BD8](v230);
  v232 = objc_alloc(MEMORY[0x277D0A800]);
  uUID = [(NLSessionController *)selfCopy UUID];
  v234 = FIUIStateMachineLabel();
  v231 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v233 = v231;
  v3 = [v232 initWithLabel:v234 queue:?];
  stateMachine = selfCopy->_stateMachine;
  selfCopy->_stateMachine = v3;
  MEMORY[0x277D82BD8](stateMachine);
  MEMORY[0x277D82BD8](v233);
  MEMORY[0x277D82BD8](v234);
  MEMORY[0x277D82BD8](uUID);
  v5 = selfCopy->_stateMachine;
  FIUIStateMachineSetDiagnosticAndErrorHandler();
  v247 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v248, "count")}];
  memset(v245, 0, sizeof(v245));
  obj = MEMORY[0x277D82BE0](v248);
  v237 = [obj countByEnumeratingWithState:v245 objects:v251 count:16];
  if (v237)
  {
    v214 = *v245[2];
    v215 = 0;
    v216 = v237;
    while (1)
    {
      v213 = v215;
      if (*v245[2] != v214)
      {
        objc_enumerationMutation(obj);
      }

      v246 = *(v245[1] + 8 * v215);
      unsignedIntegerValue = [v246 unsignedIntegerValue];
      v211 = objc_alloc(MEMORY[0x277D0A7F8]);
      v212 = NLSessionStateIdentifierDescription(unsignedIntegerValue);
      v243 = [v211 initWithLabel:?];
      MEMORY[0x277D82BD8](v212);
      [v247 setObject:v243 forKeyedSubscript:v246];
      [(FIUIStateMachine *)selfCopy->_stateMachine addState:v243];
      objc_storeStrong(&v243, 0);
      ++v215;
      if (v213 + 1 >= v216)
      {
        v215 = 0;
        v216 = [obj countByEnumeratingWithState:v245 objects:v251 count:16];
        if (!v216)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&selfCopy->_stateMap, v247);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v241 = [objc_alloc(MEMORY[0x277D0A7F8]) initWithLabel:@"Preparing"];
  v11 = selfCopy->_stateMachine;
  v8 = MEMORY[0x277CBEB98];
  v6 = v247;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v17 = [v6 objectForKeyedSubscript:?];
  v7 = v247;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v15 = [v7 objectForKeyedSubscript:?];
  v14 = [v8 setWithObjects:{v17, v15, 0}];
  v10 = v241;
  v9 = v247;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v12 = [v9 objectForKeyedSubscript:?];
  [(FIUIStateMachine *)v11 addChildStates:v14 toState:v10 withEntryState:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v19 = v241;
  v20 = dictionary;
  label = [v241 label];
  [v20 setObject:v19 forKeyedSubscript:?];
  MEMORY[0x277D82BD8](label);
  v240 = [objc_alloc(MEMORY[0x277D0A7F8]) initWithLabel:@"InSession"];
  v29 = selfCopy->_stateMachine;
  v26 = MEMORY[0x277CBEB98];
  v22 = v247;
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v39 = [v22 objectForKeyedSubscript:?];
  v23 = v247;
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v37 = [v23 objectForKeyedSubscript:?];
  v24 = v247;
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v35 = [v24 objectForKeyedSubscript:?];
  v25 = v247;
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v33 = [v25 objectForKeyedSubscript:?];
  v32 = [v26 setWithObjects:{v39, v37, v35, v33, 0}];
  v28 = v240;
  v27 = v247;
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v30 = [v27 objectForKeyedSubscript:?];
  [(FIUIStateMachine *)v29 addChildStates:v32 toState:v28 withEntryState:?];
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  v41 = v240;
  v42 = dictionary;
  label2 = [v240 label];
  [v42 setObject:v41 forKeyedSubscript:?];
  MEMORY[0x277D82BD8](label2);
  v239 = [objc_alloc(MEMORY[0x277D0A7F8]) initWithLabel:@"Stopping"];
  v49 = selfCopy->_stateMachine;
  v46 = MEMORY[0x277CBEB98];
  v44 = v247;
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v55 = [v44 objectForKeyedSubscript:?];
  v45 = v247;
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v53 = [v45 objectForKeyedSubscript:?];
  v52 = [v46 setWithObjects:{v55, v53, 0}];
  v48 = v239;
  v47 = v247;
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v50 = [v47 objectForKeyedSubscript:?];
  [(FIUIStateMachine *)v49 addChildStates:v52 toState:v48 withEntryState:?];
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  v57 = v239;
  v58 = dictionary;
  label3 = [v239 label];
  [v58 setObject:v57 forKeyedSubscript:?];
  MEMORY[0x277D82BD8](label3);
  v238 = [objc_alloc(MEMORY[0x277D0A7F8]) initWithLabel:@"Ending"];
  v65 = selfCopy->_stateMachine;
  v62 = MEMORY[0x277CBEB98];
  v60 = v247;
  v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v71 = [v60 objectForKeyedSubscript:?];
  v61 = v247;
  v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v69 = [v61 objectForKeyedSubscript:?];
  v68 = [v62 setWithObjects:{v71, v69, 0}];
  v64 = v238;
  v63 = v247;
  v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v66 = [v63 objectForKeyedSubscript:?];
  [(FIUIStateMachine *)v65 addChildStates:v68 toState:v64 withEntryState:?];
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v67);
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  v73 = v238;
  v74 = dictionary;
  label4 = [v238 label];
  [v74 setObject:v73 forKeyedSubscript:?];
  MEMORY[0x277D82BD8](label4);
  objc_storeStrong(&selfCopy->_parentStateMap, dictionary);
  stateMap = selfCopy->_stateMap;
  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[0]];
  v77 = [(NSDictionary *)stateMap objectForKeyedSubscript:?];
  _RegisterTransition(v77, v241, 1);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  v79 = selfCopy->_stateMap;
  v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[0]];
  v83 = [(NSDictionary *)v79 objectForKeyedSubscript:?];
  v80 = selfCopy->_stateMap;
  v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v81 = [(NSDictionary *)v80 objectForKeyedSubscript:?];
  _RegisterTransition(v83, v81, 3);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  v85 = selfCopy->_stateMap;
  v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v89 = [(NSDictionary *)v85 objectForKeyedSubscript:?];
  v86 = selfCopy->_stateMap;
  v88 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v87 = [(NSDictionary *)v86 objectForKeyedSubscript:?];
  _RegisterTransition(v89, v87, 8);
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](v90);
  v91 = selfCopy->_stateMap;
  v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v95 = [(NSDictionary *)v91 objectForKeyedSubscript:?];
  v92 = selfCopy->_stateMap;
  v94 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v93 = [(NSDictionary *)v92 objectForKeyedSubscript:?];
  _RegisterTransition(v95, v93, 7);
  MEMORY[0x277D82BD8](v93);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v96);
  v97 = selfCopy->_stateMap;
  v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v101 = [(NSDictionary *)v97 objectForKeyedSubscript:?];
  v98 = selfCopy->_stateMap;
  v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v99 = [(NSDictionary *)v98 objectForKeyedSubscript:?];
  _RegisterTransition(v101, v99, 6);
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](v100);
  MEMORY[0x277D82BD8](v101);
  MEMORY[0x277D82BD8](v102);
  v103 = selfCopy->_stateMap;
  v108 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v107 = [(NSDictionary *)v103 objectForKeyedSubscript:?];
  v104 = selfCopy->_stateMap;
  v106 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v105 = [(NSDictionary *)v104 objectForKeyedSubscript:?];
  _RegisterTransition(v107, v105, 2);
  MEMORY[0x277D82BD8](v105);
  MEMORY[0x277D82BD8](v106);
  MEMORY[0x277D82BD8](v107);
  MEMORY[0x277D82BD8](v108);
  v109 = selfCopy->_stateMap;
  v114 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v113 = [(NSDictionary *)v109 objectForKeyedSubscript:?];
  v110 = selfCopy->_stateMap;
  v112 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v111 = [(NSDictionary *)v110 objectForKeyedSubscript:?];
  _RegisterTransition(v113, v111, 4);
  MEMORY[0x277D82BD8](v111);
  MEMORY[0x277D82BD8](v112);
  MEMORY[0x277D82BD8](v113);
  MEMORY[0x277D82BD8](v114);
  _RegisterTransition(v241, v238, 13);
  _RegisterTransition(v241, v239, 9);
  v115 = selfCopy->_stateMap;
  v120 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v119 = [(NSDictionary *)v115 objectForKeyedSubscript:?];
  v116 = selfCopy->_stateMap;
  v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v117 = [(NSDictionary *)v116 objectForKeyedSubscript:?];
  _RegisterTransition(v119, v117, 5);
  MEMORY[0x277D82BD8](v117);
  MEMORY[0x277D82BD8](v118);
  MEMORY[0x277D82BD8](v119);
  MEMORY[0x277D82BD8](v120);
  v121 = selfCopy->_stateMap;
  v126 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v125 = [(NSDictionary *)v121 objectForKeyedSubscript:?];
  v122 = selfCopy->_stateMap;
  v124 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v123 = [(NSDictionary *)v122 objectForKeyedSubscript:?];
  _RegisterTransition(v125, v123, 6);
  MEMORY[0x277D82BD8](v123);
  MEMORY[0x277D82BD8](v124);
  MEMORY[0x277D82BD8](v125);
  MEMORY[0x277D82BD8](v126);
  v127 = selfCopy->_stateMap;
  v132 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v131 = [(NSDictionary *)v127 objectForKeyedSubscript:?];
  v128 = selfCopy->_stateMap;
  v130 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v129 = [(NSDictionary *)v128 objectForKeyedSubscript:?];
  _RegisterTransition(v131, v129, 7);
  MEMORY[0x277D82BD8](v129);
  MEMORY[0x277D82BD8](v130);
  MEMORY[0x277D82BD8](v131);
  MEMORY[0x277D82BD8](v132);
  v133 = selfCopy->_stateMap;
  v138 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v137 = [(NSDictionary *)v133 objectForKeyedSubscript:?];
  v134 = selfCopy->_stateMap;
  v136 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v135 = [(NSDictionary *)v134 objectForKeyedSubscript:?];
  _RegisterTransition(v137, v135, 8);
  MEMORY[0x277D82BD8](v135);
  MEMORY[0x277D82BD8](v136);
  MEMORY[0x277D82BD8](v137);
  MEMORY[0x277D82BD8](v138);
  v139 = selfCopy->_stateMap;
  v144 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v143 = [(NSDictionary *)v139 objectForKeyedSubscript:?];
  v140 = selfCopy->_stateMap;
  v142 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v141 = [(NSDictionary *)v140 objectForKeyedSubscript:?];
  _RegisterTransition(v143, v141, 7);
  MEMORY[0x277D82BD8](v141);
  MEMORY[0x277D82BD8](v142);
  MEMORY[0x277D82BD8](v143);
  MEMORY[0x277D82BD8](v144);
  v145 = selfCopy->_stateMap;
  v150 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v149 = [(NSDictionary *)v145 objectForKeyedSubscript:?];
  v146 = selfCopy->_stateMap;
  v148 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v147 = [(NSDictionary *)v146 objectForKeyedSubscript:?];
  _RegisterTransition(v149, v147, 5);
  MEMORY[0x277D82BD8](v147);
  MEMORY[0x277D82BD8](v148);
  MEMORY[0x277D82BD8](v149);
  MEMORY[0x277D82BD8](v150);
  _RegisterTransition(v240, v239, 9);
  v152 = v240;
  v151 = selfCopy->_stateMap;
  v154 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v153 = [(NSDictionary *)v151 objectForKeyedSubscript:?];
  _RegisterTransition(v152, v153, 10);
  MEMORY[0x277D82BD8](v153);
  MEMORY[0x277D82BD8](v154);
  v155 = selfCopy->_stateMap;
  v160 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v159 = [(NSDictionary *)v155 objectForKeyedSubscript:?];
  v156 = selfCopy->_stateMap;
  v158 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v157 = [(NSDictionary *)v156 objectForKeyedSubscript:?];
  _RegisterTransition(v159, v157, 11);
  MEMORY[0x277D82BD8](v157);
  MEMORY[0x277D82BD8](v158);
  MEMORY[0x277D82BD8](v159);
  MEMORY[0x277D82BD8](v160);
  v161 = selfCopy->_stateMap;
  v163 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v162 = [(NSDictionary *)v161 objectForKeyedSubscript:?];
  _RegisterTransition(v162, v238, 13);
  MEMORY[0x277D82BD8](v162);
  MEMORY[0x277D82BD8](v163);
  v164 = selfCopy->_stateMap;
  v166 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v165 = [(NSDictionary *)v164 objectForKeyedSubscript:?];
  _RegisterTransition(v165, v238, 13);
  MEMORY[0x277D82BD8](v165);
  MEMORY[0x277D82BD8](v166);
  v168 = v239;
  v167 = selfCopy->_stateMap;
  v170 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v169 = [(NSDictionary *)v167 objectForKeyedSubscript:?];
  _RegisterTransition(v168, v169, 10);
  MEMORY[0x277D82BD8](v169);
  MEMORY[0x277D82BD8](v170);
  v171 = selfCopy->_stateMap;
  v176 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v175 = [(NSDictionary *)v171 objectForKeyedSubscript:?];
  v172 = selfCopy->_stateMap;
  v174 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v173 = [(NSDictionary *)v172 objectForKeyedSubscript:?];
  _RegisterTransition(v175, v173, 10);
  MEMORY[0x277D82BD8](v173);
  MEMORY[0x277D82BD8](v174);
  MEMORY[0x277D82BD8](v175);
  MEMORY[0x277D82BD8](v176);
  v177 = selfCopy->_stateMap;
  v182 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v181 = [(NSDictionary *)v177 objectForKeyedSubscript:?];
  v178 = selfCopy->_stateMap;
  v180 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[13]];
  v179 = [(NSDictionary *)v178 objectForKeyedSubscript:?];
  _RegisterTransition(v181, v179, 14);
  MEMORY[0x277D82BD8](v179);
  MEMORY[0x277D82BD8](v180);
  MEMORY[0x277D82BD8](v181);
  MEMORY[0x277D82BD8](v182);
  [(NLSessionController *)selfCopy _configureStateActions];
  v184 = v241;
  v183 = selfCopy->_stateMap;
  v186 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v185 = [(NSDictionary *)v183 objectForKeyedSubscript:?];
  _RegisterTransition(v184, v185, 12);
  MEMORY[0x277D82BD8](v185);
  MEMORY[0x277D82BD8](v186);
  v188 = v240;
  v187 = selfCopy->_stateMap;
  v190 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v189 = [(NSDictionary *)v187 objectForKeyedSubscript:?];
  _RegisterTransition(v188, v189, 12);
  MEMORY[0x277D82BD8](v189);
  MEMORY[0x277D82BD8](v190);
  v191 = selfCopy->_stateMap;
  v196 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v195 = [(NSDictionary *)v191 objectForKeyedSubscript:?];
  v192 = selfCopy->_stateMap;
  v194 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v193 = [(NSDictionary *)v192 objectForKeyedSubscript:?];
  _RegisterTransition(v195, v193, 12);
  MEMORY[0x277D82BD8](v193);
  MEMORY[0x277D82BD8](v194);
  MEMORY[0x277D82BD8](v195);
  MEMORY[0x277D82BD8](v196);
  v198 = v239;
  v197 = selfCopy->_stateMap;
  v200 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v199 = [(NSDictionary *)v197 objectForKeyedSubscript:?];
  _RegisterTransition(v198, v199, 12);
  MEMORY[0x277D82BD8](v199);
  MEMORY[0x277D82BD8](v200);
  v202 = v238;
  v201 = selfCopy->_stateMap;
  v204 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v203 = [(NSDictionary *)v201 objectForKeyedSubscript:?];
  _RegisterTransition(v202, v203, 12);
  MEMORY[0x277D82BD8](v203);
  MEMORY[0x277D82BD8](v204);
  v205 = selfCopy->_stateMap;
  v210 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v209 = [(NSDictionary *)v205 objectForKeyedSubscript:?];
  v206 = selfCopy->_stateMap;
  v208 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[13]];
  v207 = [(NSDictionary *)v206 objectForKeyedSubscript:?];
  _RegisterTransition(v209, v207, 14);
  MEMORY[0x277D82BD8](v207);
  MEMORY[0x277D82BD8](v208);
  MEMORY[0x277D82BD8](v209);
  MEMORY[0x277D82BD8](v210);
  [(FIUIStateMachine *)selfCopy->_stateMachine export];
  objc_storeStrong(&v238, 0);
  objc_storeStrong(&v239, 0);
  objc_storeStrong(&v240, 0);
  objc_storeStrong(&v241, 0);
  objc_storeStrong(&dictionary, 0);
  objc_storeStrong(&v247, 0);
  objc_storeStrong(&v248, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_configureStateActions
{
  selfCopy = self;
  __b[14] = a2;
  memset(__b, 0, 0x70uLL);
  NLSessionStateIdentifierShortHandStruct(__b);
  objc_initWeak(&location, selfCopy);
  stateMap = selfCopy->_stateMap;
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v38 = [(NSDictionary *)stateMap objectForKeyedSubscript:?];
  v113 = MEMORY[0x277D85DD0];
  v114 = -1073741824;
  v115 = 0;
  v116 = __45__NLSessionController__configureStateActions__block_invoke;
  v117 = &unk_277D88970;
  objc_copyWeak(v118, &location);
  [v38 setEntry:&v113];
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  v37 = selfCopy->_stateMap;
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v35 = [(NSDictionary *)v37 objectForKeyedSubscript:?];
  v107 = MEMORY[0x277D85DD0];
  v108 = -1073741824;
  v109 = 0;
  v110 = __45__NLSessionController__configureStateActions__block_invoke_2;
  v111 = &unk_277D88970;
  objc_copyWeak(&v112, &location);
  [v35 setEntry:&v107];
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  v34 = selfCopy->_stateMap;
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v32 = [(NSDictionary *)v34 objectForKeyedSubscript:?];
  v101 = MEMORY[0x277D85DD0];
  v102 = -1073741824;
  v103 = 0;
  v104 = __45__NLSessionController__configureStateActions__block_invoke_3;
  v105 = &unk_277D88970;
  objc_copyWeak(&v106, &location);
  [v32 setEntry:&v101];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  v31 = selfCopy->_stateMap;
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v29 = [(NSDictionary *)v31 objectForKeyedSubscript:?];
  v95 = MEMORY[0x277D85DD0];
  v96 = -1073741824;
  v97 = 0;
  v98 = __45__NLSessionController__configureStateActions__block_invoke_4;
  v99 = &unk_277D88970;
  objc_copyWeak(&v100, &location);
  [v29 setEntry:&v95];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  v28 = selfCopy->_stateMap;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v26 = [(NSDictionary *)v28 objectForKeyedSubscript:?];
  v89 = MEMORY[0x277D85DD0];
  v90 = -1073741824;
  v91 = 0;
  v92 = __45__NLSessionController__configureStateActions__block_invoke_5;
  v93 = &unk_277D88970;
  objc_copyWeak(&v94, &location);
  [v26 setEntry:&v89];
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  v25 = selfCopy->_stateMap;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v23 = [(NSDictionary *)v25 objectForKeyedSubscript:?];
  v83 = MEMORY[0x277D85DD0];
  v84 = -1073741824;
  v85 = 0;
  v86 = __45__NLSessionController__configureStateActions__block_invoke_6;
  v87 = &unk_277D88970;
  objc_copyWeak(&v88, &location);
  [v23 setEntry:&v83];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  v22 = selfCopy->_stateMap;
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v20 = [(NSDictionary *)v22 objectForKeyedSubscript:?];
  v77 = MEMORY[0x277D85DD0];
  v78 = -1073741824;
  v79 = 0;
  v80 = __45__NLSessionController__configureStateActions__block_invoke_7;
  v81 = &unk_277D88970;
  objc_copyWeak(&v82, &location);
  [v20 setEntry:&v77];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  v19 = selfCopy->_stateMap;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v17 = [(NSDictionary *)v19 objectForKeyedSubscript:?];
  v71 = MEMORY[0x277D85DD0];
  v72 = -1073741824;
  v73 = 0;
  v74 = __45__NLSessionController__configureStateActions__block_invoke_8;
  v75 = &unk_277D88970;
  objc_copyWeak(&v76, &location);
  [v17 setEntry:&v71];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v16 = selfCopy->_stateMap;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v14 = [(NSDictionary *)v16 objectForKeyedSubscript:?];
  v65 = MEMORY[0x277D85DD0];
  v66 = -1073741824;
  v67 = 0;
  v68 = __45__NLSessionController__configureStateActions__block_invoke_9;
  v69 = &unk_277D88970;
  objc_copyWeak(&v70, &location);
  [v14 setEntry:&v65];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  v13 = selfCopy->_stateMap;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v11 = [(NSDictionary *)v13 objectForKeyedSubscript:?];
  v59 = MEMORY[0x277D85DD0];
  v60 = -1073741824;
  v61 = 0;
  v62 = __45__NLSessionController__configureStateActions__block_invoke_10;
  v63 = &unk_277D88970;
  objc_copyWeak(&v64, &location);
  [v11 setEntry:&v59];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v10 = selfCopy->_stateMap;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v8 = [(NSDictionary *)v10 objectForKeyedSubscript:?];
  v53 = MEMORY[0x277D85DD0];
  v54 = -1073741824;
  v55 = 0;
  v56 = __45__NLSessionController__configureStateActions__block_invoke_11;
  v57 = &unk_277D88970;
  objc_copyWeak(&v58, &location);
  [v8 setEntry:&v53];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v7 = selfCopy->_stateMap;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v5 = [(NSDictionary *)v7 objectForKeyedSubscript:?];
  v47 = MEMORY[0x277D85DD0];
  v48 = -1073741824;
  v49 = 0;
  v50 = __45__NLSessionController__configureStateActions__block_invoke_12;
  v51 = &unk_277D88970;
  objc_copyWeak(&v52, &location);
  [v5 setEntry:&v47];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v4 = selfCopy->_stateMap;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[13]];
  v2 = [(NSDictionary *)v4 objectForKeyedSubscript:?];
  v41 = MEMORY[0x277D85DD0];
  v42 = -1073741824;
  v43 = 0;
  v44 = __45__NLSessionController__configureStateActions__block_invoke_13;
  v45 = &unk_277D88970;
  objc_copyWeak(&v46, &location);
  [v2 setEntry:&v41];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&v52);
  objc_destroyWeak(&v58);
  objc_destroyWeak(&v64);
  objc_destroyWeak(&v70);
  objc_destroyWeak(&v76);
  objc_destroyWeak(&v82);
  objc_destroyWeak(&v88);
  objc_destroyWeak(&v94);
  objc_destroyWeak(&v100);
  objc_destroyWeak(&v106);
  objc_destroyWeak(&v112);
  objc_destroyWeak(v118);
  objc_destroyWeak(&location);
}

void __45__NLSessionController__configureStateActions__block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _prepareSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _startSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_3(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onRecovery];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_4(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _pauseSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_5(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _resumeSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_6(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _sessionPaused];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_7(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _inSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_8(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _stopSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_9(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onStopped];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_10(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _endSession];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_11(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onEnded];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_12(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onSessionError];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__NLSessionController__configureStateActions__block_invoke_13(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onCompleted];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_prepareSession
{
  selfCopy = self;
  location[1] = a2;
  [(NLSessionController *)self _setState:1];
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_impl(&dword_20AEA4000, log, type, "[SessionController] Calling prepare on HKWorkoutSession", v4, 2u);
  }

  objc_storeStrong(location, 0);
  [(HKWorkoutSession *)selfCopy->_workoutSession prepare];
}

- (void)_startSession
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7[1] = a2;
  [(NLSessionController *)self _setState:3];
  delegate = [(NLSessionController *)selfCopy delegate];
  v7[0] = [(NLSessionControllerDelegate *)delegate activityBeginDate];
  MEMORY[0x277D82BD8](delegate);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    [v7[0] timeIntervalSinceReferenceDate];
    v4 = v2;
    [v7[0] timeIntervalSince1970];
    __os_log_helper_16_2_3_8_64_8_0_8_0(v9, v7[0], v4, v3);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionController] Calling startActivity on HKWorkoutSession with activity begin date %@, timeInterval(SinceReferenceDate: %f, Since1970: %f)", v9, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  [(HKWorkoutSession *)selfCopy->_workoutSession startActivityWithDate:v7[0]];
  objc_storeStrong(v7, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_stopSession
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v4[1] = a2;
  [(NLSessionController *)self _setState:8];
  delegate = [(NLSessionController *)selfCopy delegate];
  v4[0] = [(NLSessionControllerDelegate *)delegate activityEndDate];
  MEMORY[0x277D82BD8](delegate);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v6, v4[0]);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionController] Calling stopActivity on HKWorkoutSession with activity end date %@", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(HKWorkoutSession *)selfCopy->_workoutSession stopActivityWithDate:v4[0]];
  objc_storeStrong(v4, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_onRecovery
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v10 = a2;
  [(NLSessionController *)self _setState:2];
  v9 = 0;
  state = [(HKWorkoutSession *)selfCopy->_workoutSession state];
  switch(state)
  {
    case 1:
      goto LABEL_9;
    case 2:
      v9 = 8;
      goto LABEL_12;
    case 3:
      goto LABEL_9;
    case 4:
      v9 = 6;
      goto LABEL_12;
  }

  if ((state - 5) <= 1)
  {
LABEL_9:
    _HKInitializeLogging();
    v8 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v7 = 16;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      log = v8;
      type = v7;
      [(HKWorkoutSession *)selfCopy->_workoutSession state];
      v4 = HKWorkoutSessionStateToString();
      v6 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_1_8_66(v12, v6);
      _os_log_error_impl(&dword_20AEA4000, log, type, "[SessionController] Unhandled recovered state %{public}@", v12, 0xCu);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v6, 0);
    }

    objc_storeStrong(&v8, 0);
  }

LABEL_12:
  if (v9)
  {
    [(FIUIStateMachine *)selfCopy->_stateMachine event:v9];
  }

  *MEMORY[0x277D85DE8];
}

- (void)_onSessionError
{
  [(NLSessionController *)self _setState:10];
  delegate = [(NLSessionController *)self delegate];
  [(NLSessionControllerDelegate *)delegate sessionEncounteredSessionError:self->_sessionError];
  MEMORY[0x277D82BD8](delegate);
  [(FIUIStateMachine *)self->_stateMachine event:14];
}

- (void)_onCompleted
{
  [(NLSessionController *)self _setState:13];
  objc_storeStrong(&self->_workoutSession, 0);
  delegate = [(NLSessionController *)self delegate];
  [(NLSessionControllerDelegate *)delegate sessionControllerDidComplete];
  MEMORY[0x277D82BD8](delegate);
}

- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  stateCopy = state;
  toStateCopy = toState;
  _HKInitializeLogging();
  v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    log = v16;
    type = v15;
    v9 = NLSessionActivityStateDescription(stateCopy);
    v5 = MEMORY[0x277D82BE0](v9);
    v14 = v5;
    v8 = NLSessionActivityStateDescription(toStateCopy);
    v13 = MEMORY[0x277D82BE0](v8);
    __os_log_helper_16_2_2_8_64_8_64(v21, v5, v13);
    _os_log_impl(&dword_20AEA4000, log, type, "[SessionController] sessionActivity changed state from:%@ to:%@", v21, 0x16u);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v16, 0);
  v12 = 0;
  switch(toStateCopy)
  {
    case 0uLL:
      goto LABEL_27;
    case 1uLL:
      v12 = 1;
      break;
    case 2uLL:
      goto LABEL_27;
    case 3uLL:
      if (stateCopy != 4)
      {
        v12 = 5;
      }

      break;
    case 4uLL:
      goto LABEL_27;
    case 5uLL:
      v12 = 5;
      break;
    case 6uLL:
      v12 = _StateForEnteringSessionActiveFromState(stateCopy);
      break;
    case 7uLL:
      if ([(NLSessionController *)selfCopy sessionState]!= 12 && [(NLSessionController *)selfCopy sessionState]!= 11 && [(NLSessionController *)selfCopy sessionState]!= 13 && [(NLSessionController *)selfCopy sessionState])
      {
        v12 = 13;
      }

      break;
    default:
      if (toStateCopy - 8 > 1)
      {
        if (toStateCopy == 10)
        {
          v12 = 9;
        }

        break;
      }

LABEL_27:
      v12 = 0;
      break;
  }

  if (v12)
  {
    [(FIUIStateMachine *)selfCopy->_stateMachine event:v12];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  stateCopy = state;
  fromStateCopy = fromState;
  v23 = 0;
  objc_storeStrong(&v23, date);
  _HKInitializeLogging();
  v22 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    log = v22;
    type = v21;
    v10 = location[0];
    v15 = HKWorkoutSessionStateToString();
    v11 = MEMORY[0x277D82BE0](v15);
    v20 = v11;
    v14 = HKWorkoutSessionStateToString();
    v19 = MEMORY[0x277D82BE0](v14);
    __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(v28, v10, v11, v19, v23);
    _os_log_impl(&dword_20AEA4000, log, type, "[SessionController] workoutSession:%@ changed state from:%@ to:%@ date:%@", v28, 0x2Au);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(&v22, 0);
  if ((fromStateCopy == 1 || fromStateCopy == 5) && stateCopy == 2)
  {
    v9 = +[WOCoreWorkoutSignposter shared];
    [(WOCoreWorkoutSignposter *)v9 emitWithSignpost:5];
    MEMORY[0x277D82BD8](v9);
    [(FIUIStateMachine *)selfCopy->_stateMachine eventAsync:4];
  }

  else if (stateCopy != 1)
  {
    switch(stateCopy)
    {
      case 2:
        [(FIUIStateMachine *)selfCopy->_stateMachine eventAsync:8];
        break;
      case 3:
        if (!selfCopy->_sessionError)
        {
          [(FIUIStateMachine *)selfCopy->_stateMachine eventAsync:10];
        }

        break;
      case 4:
        [(FIUIStateMachine *)selfCopy->_stateMachine eventAsync:6];
        break;
      case 6:
        [(FIUIStateMachine *)selfCopy->_stateMachine eventAsync:11];
        break;
    }
  }

  mirroringDelegate = [(NLSessionController *)selfCopy mirroringDelegate];
  [(HKWorkoutSessionPrivateDelegate *)mirroringDelegate workoutSession:location[0] didChangeToState:stateCopy fromState:fromStateCopy date:v23];
  MEMORY[0x277D82BD8](mirroringDelegate);
  stingDelegate = [(NLSessionController *)selfCopy stingDelegate];
  [(HKWorkoutSessionDelegate *)stingDelegate workoutSession:location[0] didChangeToState:stateCopy fromState:fromStateCopy date:v23];
  MEMORY[0x277D82BD8](stingDelegate);
  mirroredDelegate = [(NLSessionController *)selfCopy mirroredDelegate];
  [(HKWorkoutSessionDelegate *)mirroredDelegate workoutSession:location[0] didChangeToState:stateCopy fromState:fromStateCopy date:v23];
  MEMORY[0x277D82BD8](mirroredDelegate);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workoutSession:(id)session didFailWithError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v20 = 0;
  objc_storeStrong(&v20, error);
  _HKInitializeLogging();
  v19 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v18 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_64_8_64(v23, location[0], v20);
    _os_log_error_impl(&dword_20AEA4000, v19, v18, "[SessionController] Workout session %@ did fail with error: %@", v23, 0x16u);
  }

  objc_storeStrong(&v19, 0);
  mirroringDelegate = [(NLSessionController *)selfCopy mirroringDelegate];
  [(HKWorkoutSessionPrivateDelegate *)mirroringDelegate workoutSession:location[0] didFailWithError:v20];
  MEMORY[0x277D82BD8](mirroringDelegate);
  stingDelegate = [(NLSessionController *)selfCopy stingDelegate];
  [(HKWorkoutSessionDelegate *)stingDelegate workoutSession:location[0] didFailWithError:v20];
  MEMORY[0x277D82BD8](stingDelegate);
  mirroredDelegate = [(NLSessionController *)selfCopy mirroredDelegate];
  [(HKWorkoutSessionDelegate *)mirroredDelegate workoutSession:location[0] didFailWithError:v20];
  MEMORY[0x277D82BD8](mirroredDelegate);
  v8 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v8;
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __55__NLSessionController_workoutSession_didFailWithError___block_invoke;
  v15 = &unk_277D88998;
  v16 = MEMORY[0x277D82BE0](selfCopy);
  v17 = MEMORY[0x277D82BE0](v20);
  dispatch_async(queue, &v11);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workoutSession:(id)session didUpdateWorkoutConfiguration:(id)configuration
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v8 = 0;
  objc_storeStrong(&v8, configuration);
  _HKInitializeLogging();
  v7 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v11, [v8 locationType]);
    _os_log_impl(&dword_20AEA4000, v7, OS_LOG_TYPE_DEFAULT, "[SessionController] Recevied HKWorkoutSessionLocationType %ld", v11, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  delegate = [(NLSessionController *)selfCopy delegate];
  -[NLSessionControllerDelegate didUpdateWorkoutLocationType:](delegate, "didUpdateWorkoutLocationType:", [v8 locationType]);
  MEMORY[0x277D82BD8](delegate);
  mirroringDelegate = [(NLSessionController *)selfCopy mirroringDelegate];
  [(HKWorkoutSessionPrivateDelegate *)mirroringDelegate workoutSession:location[0] didUpdateWorkoutConfiguration:v8];
  MEMORY[0x277D82BD8](mirroringDelegate);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workoutSession:(id)session didSuggestWorkoutConfiguration:(id)configuration date:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v9 = 0;
  objc_storeStrong(&v9, configuration);
  v8 = 0;
  objc_storeStrong(&v8, date);
  delegate = [(NLSessionController *)selfCopy delegate];
  [(NLSessionControllerDelegate *)delegate sessionController:selfCopy didSuggestWorkoutConfiguration:v9 date:v8];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutSession:(id)session didGenerateEvent:(id)event
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v7 = 0;
  objc_storeStrong(&v7, event);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v10, location[0], v7);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionController] Workout session %@ did generate event %@", v10, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  delegate = [(NLSessionController *)selfCopy delegate];
  [(NLSessionControllerDelegate *)delegate sessionController:selfCopy didRecieveWorkoutEvent:v7];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workoutSession:(id)session didReceiveDataFromRemoteDevice:(id)device
{
  v11[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v8 = 0;
  objc_storeStrong(&v8, device);
  mirroringDelegate = [(NLSessionController *)selfCopy mirroringDelegate];
  v5 = location[0];
  v11[0] = v8;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [(HKWorkoutSessionPrivateDelegate *)mirroringDelegate workoutSession:v5 didReceiveDataFromRemoteWorkoutSession:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](mirroringDelegate);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workoutSession:(id)session didReceiveDataFromRemoteWorkoutSession:(id)workoutSession
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v6 = 0;
  objc_storeStrong(&v6, workoutSession);
  mirroringDelegate = [(NLSessionController *)selfCopy mirroringDelegate];
  [(HKWorkoutSessionPrivateDelegate *)mirroringDelegate workoutSession:location[0] didReceiveDataFromRemoteWorkoutSession:v6];
  MEMORY[0x277D82BD8](mirroringDelegate);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutSession:(id)session didDisconnectFromRemoteDeviceWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v6 = 0;
  objc_storeStrong(&v6, error);
  mirroringDelegate = [(NLSessionController *)selfCopy mirroringDelegate];
  [(HKWorkoutSessionPrivateDelegate *)mirroringDelegate workoutSession:location[0] didDisconnectFromRemoteDeviceWithError:v6];
  MEMORY[0x277D82BD8](mirroringDelegate);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_setState:(unint64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v13 = a2;
  stateCopy = state;
  memset(__b, 0, sizeof(__b));
  obj = [(NSHashTable *)selfCopy->_stateObservers allObjects];
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      [v11 sessionController:selfCopy didChangeFromState:selfCopy->_sessionState toState:{stateCopy, v7}];
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  selfCopy->_sessionState = stateCopy;
  *MEMORY[0x277D85DE8];
}

- (void)addSessionControllerStateObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_stateObservers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeSessionControllerStateObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_stateObservers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (NLSessionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HKWorkoutSessionPrivateDelegate)mirroringDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mirroringDelegate);

  return WeakRetained;
}

- (HKWorkoutSessionDelegate)stingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stingDelegate);

  return WeakRetained;
}

- (HKWorkoutSessionDelegate)mirroredDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mirroredDelegate);

  return WeakRetained;
}

@end